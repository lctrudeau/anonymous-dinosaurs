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
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
// CREATED		"Wed Nov 06 13:53:07 2013"

module PPgen_wordslice(
	Double,
	Negate,
	Single,
	Y,
	Sign3,
	Sign2,
	Sign1,
	Sign0,
	PP0,
	PP1,
	PP2,
	PP3
);


input wire	[3:0] Double;
input wire	[3:0] Negate;
input wire	[3:0] Single;
input wire	[7:0] Y;
output wire	Sign3;
output wire	Sign2;
output wire	Sign1;
output wire	Sign0;
output wire	[8:0] PP0;
output wire	[8:0] PP1;
output wire	[8:0] PP2;
output wire	[8:0] PP3;






PPgen_9bits	b2v_inst(
	.Single(Single[3]),
	.Double(Double[3]),
	.Negate(Negate[3]),
	.Y(Y),
	.Sign(Sign3),
	.PP(PP3));


PPgen_9bits	b2v_inst3(
	.Single(Single[2]),
	.Double(Double[2]),
	.Negate(Negate[2]),
	.Y(Y),
	.Sign(Sign2),
	.PP(PP2));


PPgen_9bits	b2v_inst4(
	.Single(Single[1]),
	.Double(Double[1]),
	.Negate(Negate[1]),
	.Y(Y),
	.Sign(Sign1),
	.PP(PP1));


PPgen_9bits	b2v_inst5(
	.Single(Single[0]),
	.Double(Double[0]),
	.Negate(Negate[0]),
	.Y(Y),
	.Sign(Sign0),
	.PP(PP0));


endmodule
