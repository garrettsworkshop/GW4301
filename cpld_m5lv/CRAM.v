module CRAM	(PHI2, DotClk, nRESET,
	A, D, nWE,
	nIO1, nIO2, nROML, nROMH,
	nIRQ, BA, nDMA,
	RA, RD, nRAS, nCAS, nRWE,
	DelayOut, DelayIn,
	nMode, Size0, Size1);

	/* Clock & Reset */
	input DotClk;
	input PHI2;
	input nRESET;

	/* Jumpers */
	input nMode, Size0, Size1;

	/* C64 Bus */
	wire AOE = 0;
	inout [15:0] A = AOE ? CA[15:0] : 8'bZ;
	inout nWE = AOE ? something : 1'bZ;
	wire STATREGWE = DSEL==4'h0;
	wire CMDREGWE = DSEL==4'h1;
	wire CALOREGWE = DSEL==4'h2;
	wire CAHIREGWE = DSEL==4'h3;
	wire EALOREGWE = DSEL==4'h4;
	wire EAMDREGWE = DSEL==4'h5;
	wire EAHIREGWE = DSEL==4'h6;
	wire LENLOREGWE = DSEL==4'h7;
	wire LENHIREGWE = DSEL==4'h8;
	wire IRQMASKREGWE = DSEL==4'h9;
	wire ACTRLREGWE = DSEL==4'hA;
	wire DOE = 0;
	wire [3:0] DSEL = TPENDING ? 4'hF :
		A[4:0] > 5'h0A : 4'hE :
		A[3:0];
	inout [7:0] D = ~DOE ? 8'bZ : Dout;
	wire Dout = DSEL==4'hF ? RA[7:0] :
		DSEL==4'h0 ? { IPEND, 	ENDBLK, 	FAULT, 		~nSIZE, 	1'b0, 1'b0, 1'b0, 1'b0 } :
		DSEL==4'h1 ? { EXEC, 	1'b0, 		LOAD, 		FF00DEC, 	1'b0, 1'b0,	TTYPE[1:0] } :
		DSEL==4'h2 ? CA[7:0] :
		DSEL==4'h3 ? CA[15:8] : 
		DSEL==4'h4 ? EA[7:0] : 
		DSEL==4'h5 ? EA[15:8] : 
		DSEL==4'h6 ? { 1'b1,	1'b1, 		1'b1, 		EA[20], 	EA[19:16] } : 
		DSEL==4'h7 ? LEN[7:0] :
		DSEL==4'h8 ? LEN[15:8] :
		DSEL==4'h9 ? { IRQEN, 	ENDBLKEN, 	FAULTEN, 	1'b1,		1'b1, 1'b1,	1'b1, 1'b1 } :
		DSEL==4'hA ? { ACTRL[1],ACTRL[0], 	1'b1,		1'b1, 		1'b1, 1'b1, 1'b1, 11'b1 } :
		8'h00;
	// D[7]: 1 one, 0 zero, 11 var
	// D[6]: 2 one, 1 zero, 10 var
	// D[5]: 3 one, 0 zero, 10 var
	// D[4]: 3 one, 0 zero, 10 var
	// D[3]: 3 one, 0 zero, 8 var
	// D[2]: 2 one, 2 zero, 8 var
	// D[1]: 2 one, 1 zero, 9 var
	// D[0]: 2 one, 1 zero, 9 var
	input nIO1, nIO2, nROML, nROMH;
	input BA;
	output nDMA;
	output nIRQ;

	/* DRAM */
	output nRAS, nCAS, nRWE;
	inout [7:0] RD;
	
	/* Status Register 0x0 */
	reg IPEND = 0; // bit 7
	reg ENDBLK = 0; // bit 6
	reg FAULT = 0; // bit 5
	reg nSIZE = 0; // bit 4 inverted
	// bit 3:0 == 0000
	
	/* Command Register 0x1 */
	reg EXEC = 0; // bit 7
	// bit 6 == 0
	reg LOAD = 0; // bit 5
	reg FF00DEC = 0; // bit 4 inverted
	// bit 3:2 == 00
	reg [1:0] TTYPE = 0; // bit 1:0

	/* C64 Start Address Register 0x2-3 */
	reg [15:0] CA = 0;

	/* REU Start Address Register 0x4-6 */
	reg [20:0] EA = 0;

	/* Transfer Length Register 0x7-8 */
	reg [15:0] LEN = 16'hFFFF;

	/* Interrupt Mask Register 0x9 */
	reg IRQEN = 0; // bit 7
	reg ENDBLKEN = 0; // bit 6
	reg FAULTEN = 0; // bit 5
	// bit 4:0 == 11111

	/* Address Control Register */
	reg [1:0] ACTRL // bit 7:6
	// bit 5:0 == 111111
	
	always @(posedge DotClk) begin

	end
	
	always @(negedge DotClk) begin

	end
endmodule
