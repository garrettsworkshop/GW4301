module CRAM	(PHI2, DotClk, nRES,
	A, D, nWE,
	nIO1, nIO2, nROML, nROMH,
	nIRQ, BA, nDMA,
	RA, RD, nRAS, nCAS, nRWE,
	DelayOut, DelayIn,
	nMode, Size0, Size1);

	/* Clock & Reset */
	input DotClk, PHI2;
	input nRES;

	/* Jumpers */
	input nMode, Size0, Size1;

	/* Delay */
	output DelayOut;
	assign DelayOut = 0;
	input DelayIn;

	/* Address Bus */
	input [15:0] A;
	input nWE;

	/* Data Bus */
	inout [7:0] D;
	reg [7:0] Dout;
	assign D = RAMRD ? Dout[7:0] : 8'bZ;

	/* More C64/6502 */
	input BA;
	output nDMA;
	assign nDMA = 1'bZ;
	output nIRQ;
	assign nIRQ = 1'bZ;
	
	/* Select Signals */
	input nIO1, nIO2, nROML, nROMH;
	wire RAMSEL = ~nIO1;
	wire RAMSELpre = A[15:8]==8'hDE;
	wire RAMRD = RAMSEL & nWE;
	wire RAMRDpre = RAMSELpre & nWE;
	wire RAMWE = RAMSEL & ~nWE;
	wire BlockSEL = ~nIO2 & A[7:0]==8'hFF;
	wire BlockWE = BlockSEL & ~nWE;
	wire WindowSEL = ~nIO2 & A[7:0]==8'hFE;
	wire WindowWE = WindowSEL & ~nWE;

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
	assign RD[7:0] = RAMWE ? D[7:0] : 8'bZ;
	
	/* Registers */
	reg [7:0] Block;
	reg [5:0] Window;

	/* State Counters */
	reg PHI2reg = 0; // Saved PHI2 at last rising clock edge
	reg nPHI2seen = 0; // Have we seen /PHI2 since POR?
	reg [3:0] S = 0; // State counter
	reg [2:0] Ref = 0; // Refresh counter
	
	always @(posedge DotClk) begin
		// Synchronize state counter to S1 in first cycle of /PHI2
		PHI2reg <= PHI2; // Save old PHI2
		if (~PHI2) nPHI2seen <= 1;
		S <= (~PHI2 & PHI2reg & nPHI2seen) ? 4'h1 : 
			S==4'h0 ? 4'h0 :
			S==4'hF ? 4'hF : S+1;
		
		// Refresh counter allows DRAM refresh once every 8 cycles
		Ref <= Ref+1;

		// DRAM RAS/CAS
		RAS <= (S==2 & Ref==0) | 
			   (S==4 & RAMRDpre) | (S==5 & RAMSEL) | (S==6 & RAMWE);
		CAS <= (S==1) & Ref==0) | (S==2 & Ref==0) | 
			   (S==5 & RAMRD) | (S==6 & RAMWR);
	end

	always @(negedge DotClk) begin
		// DRAM address muxing
		RAsel <= RAMSEL & (S==5 | S==6);
	end
	
	always @(posedge DotClk, negedge nRES) begin
		if (~nRES) begin
			Dout <= 0;
		end else begin
			// Register output data at end of S6
			if (S==6 & BlockWE) Dout[7:0] <= RD[7:0];
		end
	end
	
	always @(posedge DotClk, negedge nRES) begin
		if (~nRES) begin
			Block <= 0;
			Window <= 0;
		end else begin
			// Set registers at end of S7
			if (S==7 & BlockWE) Block[7:0] <= D[7:0];
			if (S==7 & WindowWE) Window[5:0] <= D[5:0];
		end
	end
endmodule
