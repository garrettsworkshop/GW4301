module CRAM	(PHI2, DotClk, nRESET,
	A, D, nWE,
	nIO1, nIO2, nROML, nROMH,
	nIRQ, BA, nDMA,
	RA, RD, nRAS, nCAS, nRWE,
	DelayOut, DelayIn,
	nMode, Size0, Size1);

	/* Clock & Reset */
	input DotClk, PHI2;
	input nRESET;

	/* Jumpers */
	input nMode, Size0, Size1;

	/* Address Bus */
	input [15:0] A;
	input nWE;

	/* Data Bus */
	wire DOE = RAMRD;
	inout [7:0] D = DOE ? Dout : 8'bZ;
	wire [7:0] Dout = RD[7:0];

	/* More C64/6502 */
	input BA;
	output nDMA = 1'bZ;
	output nIRQ = 1'bZ;
	
	/* Select Signals */
	input nIO1, nIO2, nROML, nROMH;
	wire RAMSEL = ~nIO1;
	wire RAMRD = RAMSEL & nWE;
	wire RAMWE = RAMSEL & ~nWE;
	wire BlockSEL = ~nIO2 & A[7:0]==8'hFF;
	wire BlockWE = BlockSEL & ~nWE;
	wire WindowSEL = ~nIO2 & A[7:0]==8'hFE;
	wire WindowWE = WindowSEL & ~nWE;

	/* DRAM */
	output nRAS = ~RASr;
	output nCAS = ~((CASr & PHI2) | CASf);
	output nRWE = nWE | ~PHI2;
	output [11:0] RA = ~RAsel ? 
		{ 1'b0, Block[6:0], Window[5:2] } : // Row
		{ 1'b0, Block[7], Window[1:0], A[7:0]}; // Column

	wire RDOE = RAMWE;
	inout [7:0] RD = RDOE ? RDout : 8'bZ;
	wire [7:0] RDout = D[7:0];
	reg RASr = 0, CASr = 0, CASf = 0, RAsel = 0;
	
	/* Registers */
	reg [7:0] Block;
	reg [5:0] Window;

	/* State Counters */
	reg PHI2reg = 0; // Saved PHI2 at last rising clock edge
	reg nPHI2seen = 0; // Have we seen /PHI2 since POR?
	reg [3:0] S = 0; // State counter
	reg [3:0] Ref = 0; // Refresh skip counter
	
	always @(posedge DotClk) begin
		// Synchronize state counter to S1 in first cycle of /PHI2
		PHI2reg <= PHI2; // Save old PHI2
		if (~PHI2) nPHI2seen <= 1;
		S <= (~PHI2 & PHI2reg & nPHI2seen) ? 4'h1 : 
			S==4'h0 ? 4'h0 :
			S==4'hF ? 4'hF : S+1;
		
		// Refresh counter allows DRAM refresh once every 13 cycles
		if (S==2) Ref <= (Ref[3:2] == 2'b11) ? 4'h0 : Ref+1;

		// DRAM RAS/CAS
		RASr <= (S==1 & Ref==0) | (S==4 & RAMRD) | (S==5 & RAMSEL) | (S==6 & RAMWE) | ;
		CASr <= (S==5 & RAMRD) | (S==6 & RAMSEL) | (S==7 & RAMRD);
	end
	
	always @(negedge DotClk) begin
		// DRAM CAS and address muxing
		RAsel <= RAMSEL & (S==5 | S==6);
		CASf <= S==1 & Ref==0;
	end
	
	always @(posedge DotClk) begin
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
