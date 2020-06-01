module CRAM	(PHI2, DotClk, nRES,
	A, D, nWE,
	nIO1, nIO2,
	RA, RD, nRAS, nCAS, nRWE,
	nMode, Size0, Size1);

	/* Clock & Reset */
	input DotClk, PHI2;
	input nRES;

	/* Jumpers */
	output nMode, Size0, Size1;
	assign nMode = S[2];
	assign Size1 = S[1];
	assign Size0 = S[0];

	/* Address Bus */
	input [15:0] A;
	input nWE;

	/* Data Bus */
	inout [7:0] D;
	reg [7:0] Dout;
	assign D = RAMRD ? Dout[7:0] : 8'bZ;
	
	/* Select Signals */
	input nIO1, nIO2;
	wire RAMSEL = ~nIO1;
	wire RAMSELpre = A[15:8]==8'hDE;
	wire RAMRD = RAMSEL & nWE;
	wire RAMRDpre = RAMSELpre & nWE;
	wire RAMWR = RAMSEL & ~nWE;
	wire BlockSEL = ~nIO2 & A[7] & A[6] & A[0];
	wire BlockWR = BlockSEL & ~nWE;
	wire WindowSEL = ~nIO2 & A[7] & A[6] & ~A[0];
	wire WindowWR = WindowSEL & ~nWE;

	/* DRAM */
	output reg nRAS = 1'b1;
	output reg nCAS = 1'b1;
	output nRWE;
	assign nRWE = ~(~nWE & PHI2);
	output [11:0] RA;
	reg RAsel = 0;
	assign RA[11] = 1'b0;
	assign RA[10:0] = ~RAsel ? 
		{Block[6:0], Window[5:2]} : // Row
		{Block[7], Window[1:0], A[7:0]}; // Column
	inout [7:0] RD;
	assign RD[7:0] = RAMWR ? D[7:0] : 8'bZ;
	
	/* Registers */
	reg [7:0] Block;
	reg [5:0] Window;

	/* State Counters */
	reg PHI2reg = 0; // Saved PHI2 at last rising clock edge
	reg nPHI2seen = 0; // Have we seen /PHI2 since POR?
	reg [2:0] S = 0; // State counter
	reg [2:0] Ref = 0; // Refresh counter
	
	always @(posedge DotClk) begin
		// Synchronize state counter to S1 in first cycle of /PHI2
		PHI2reg <= PHI2; // Save old PHI2
		if (~PHI2) nPHI2seen <= 1;
		S <= (~PHI2 & PHI2reg & nPHI2seen) ? 3'h1 : 
			S==3'h0 ? 3'h0 :
			S==3'h7 ? 3'h7 : S+1;
		
		// Refresh counter allows DRAM refresh once every 8 1 MHz cycles
		if (S==4) Ref <= Ref+1;

		// DRAM RAS/CAS
		nRAS <= ~((S==2 & Ref==0) | (S==4) | (S==5 & RAMSEL) | (S==6 & RAMWR));
		nCAS <= ~(((S==1 | S==2) & Ref==0) | (S==5 & RAMRD) | (S==6 & RAMWR));
	end

	always @(negedge DotClk) begin
		// DRAM address muxing
		RAsel <= S==5 | S==6;
	end
	
	always @(posedge DotClk) begin
		if (S==6) Dout[7:0] <= RD[7:0];
	end
	
	always @(posedge DotClk, negedge nRES) begin
		if (~nRES) begin
			Block <= 0;
			Window <= 0;
		end else begin
			// Set registers at end of S7
			if (S==7 & BlockWR) Block[7:0] <= D[7:0];
			if (S==7 & WindowWR) Window[5:0] <= D[5:0];
		end
	end
endmodule
