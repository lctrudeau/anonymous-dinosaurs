// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Mon Nov 04 18:51:52 2013"

module PPgen_9bits(
	Single,
	Double,
	Negate,
	Y,
	Sign,
	PP
);


input wire	Single;
input wire	Double;
input wire	Negate;
input wire	[7:0] Y;
output wire	Sign;
output wire	[8:0] PP;

wire	[8:0] PP_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_19 = 0;




PPgen	b2v_inst1(
	.Single(Single),
	.Yi(Y[7]),
	.Double(Double),
	.Yi_m1(Y[7]),
	.Negate(Negate),
	.PPi(SYNTHESIZED_WIRE_14));



HalfAdder	b2v_inst11(
	.A(SYNTHESIZED_WIRE_0),
	.Cin(SYNTHESIZED_WIRE_1),
	.Cout(SYNTHESIZED_WIRE_3),
	.Sum(PP_ALTERA_SYNTHESIZED[1]));


HalfAdder	b2v_inst12(
	.A(SYNTHESIZED_WIRE_2),
	.Cin(SYNTHESIZED_WIRE_3),
	.Cout(SYNTHESIZED_WIRE_5),
	.Sum(PP_ALTERA_SYNTHESIZED[2]));


HalfAdder	b2v_inst13(
	.A(SYNTHESIZED_WIRE_4),
	.Cin(SYNTHESIZED_WIRE_5),
	.Cout(SYNTHESIZED_WIRE_7),
	.Sum(PP_ALTERA_SYNTHESIZED[3]));


HalfAdder	b2v_inst14(
	.A(SYNTHESIZED_WIRE_6),
	.Cin(SYNTHESIZED_WIRE_7),
	.Cout(SYNTHESIZED_WIRE_9),
	.Sum(PP_ALTERA_SYNTHESIZED[4]));


HalfAdder	b2v_inst15(
	.A(SYNTHESIZED_WIRE_8),
	.Cin(SYNTHESIZED_WIRE_9),
	.Cout(SYNTHESIZED_WIRE_11),
	.Sum(PP_ALTERA_SYNTHESIZED[5]));


HalfAdder	b2v_inst16(
	.A(SYNTHESIZED_WIRE_10),
	.Cin(SYNTHESIZED_WIRE_11),
	.Cout(SYNTHESIZED_WIRE_13),
	.Sum(PP_ALTERA_SYNTHESIZED[6]));


HalfAdder	b2v_inst17(
	.A(SYNTHESIZED_WIRE_12),
	.Cin(SYNTHESIZED_WIRE_13),
	.Cout(SYNTHESIZED_WIRE_15),
	.Sum(PP_ALTERA_SYNTHESIZED[7]));


HalfAdder	b2v_inst18(
	.A(SYNTHESIZED_WIRE_14),
	.Cin(SYNTHESIZED_WIRE_15),
	
	.Sum(PP_ALTERA_SYNTHESIZED[8]));


PPgen	b2v_inst2(
	.Single(Single),
	.Yi(Y[7]),
	.Double(Double),
	.Yi_m1(Y[6]),
	.Negate(Negate),
	.PPi(SYNTHESIZED_WIRE_12));


HalfAdder	b2v_inst20(
	.A(SYNTHESIZED_WIRE_16),
	.Cin(Negate),
	.Cout(SYNTHESIZED_WIRE_1),
	.Sum(PP_ALTERA_SYNTHESIZED[0]));


PPgen	b2v_inst3(
	.Single(Single),
	.Yi(Y[5]),
	.Double(Double),
	.Yi_m1(Y[4]),
	.Negate(Negate),
	.PPi(SYNTHESIZED_WIRE_8));


NAND8_reducer	b2v_inst36(
	.InY(Y),
	.Reduced_NAND(SYNTHESIZED_WIRE_17));

assign	SYNTHESIZED_WIRE_18 = ~(Negate & Double & SYNTHESIZED_WIRE_17);


PPgen	b2v_inst4(
	.Single(Single),
	.Yi(Y[6]),
	.Double(Double),
	.Yi_m1(Y[5]),
	.Negate(Negate),
	.PPi(SYNTHESIZED_WIRE_10));

assign	Sign = SYNTHESIZED_WIRE_18 & PP_ALTERA_SYNTHESIZED[8];


PPgen	b2v_inst5(
	.Single(Single),
	.Yi(Y[4]),
	.Double(Double),
	.Yi_m1(Y[3]),
	.Negate(Negate),
	.PPi(SYNTHESIZED_WIRE_6));


PPgen	b2v_inst6(
	.Single(Single),
	.Yi(Y[3]),
	.Double(Double),
	.Yi_m1(Y[2]),
	.Negate(Negate),
	.PPi(SYNTHESIZED_WIRE_4));


PPgen	b2v_inst7(
	.Single(Single),
	.Yi(Y[2]),
	.Double(Double),
	.Yi_m1(Y[1]),
	.Negate(Negate),
	.PPi(SYNTHESIZED_WIRE_2));


PPgen	b2v_inst8(
	.Single(Single),
	.Yi(Y[1]),
	.Double(Double),
	.Yi_m1(Y[0]),
	.Negate(Negate),
	.PPi(SYNTHESIZED_WIRE_0));


PPgen	b2v_inst9(
	.Single(Single),
	.Yi(Y[0]),
	.Double(Double),
	.Yi_m1(SYNTHESIZED_WIRE_19),
	.Negate(Negate),
	.PPi(SYNTHESIZED_WIRE_16));

assign	PP = PP_ALTERA_SYNTHESIZED;

endmodule
