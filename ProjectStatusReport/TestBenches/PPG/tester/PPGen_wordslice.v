/* Verilog for cell 'PPGen_wordslice{sch}' from library 'wordlib8' */
/* Created on Mon Nov 04, 2013 20:40:31 */
/* Last revised on Wed Nov 06, 2013 18:23:07 */
/* Written on Wed Nov 06, 2013 18:23:30 by Electric VLSI Design System, version 8.06 */

module muddlib07__and2_1x(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_1, net_2;

  tranif1 nmos_0(net_1, net_2, b);
  tranif1 nmos_1(gnd, net_1, a);
  tranif1 nmos_2(gnd, y, net_2);
  tranif0 pmos_0(net_2, vdd, b);
  tranif0 pmos_1(net_2, vdd, a);
  tranif0 pmos_2(y, vdd, net_2);
endmodule   /* muddlib07__and2_1x */

module muddlib07__xor2_1x(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire ab, bb, net_3, net_4, net_7, net_8;

  tranif1 nmos_0(gnd, net_3, a);
  tranif1 nmos_1(gnd, net_4, ab);
  tranif1 nmos_2(net_3, y, b);
  tranif1 nmos_3(net_4, y, bb);
  tranif1 nmos_4(gnd, bb, b);
  tranif1 nmos_5(gnd, ab, a);
  tranif0 pmos_0(y, net_7, b);
  tranif0 pmos_1(net_7, vdd, ab);
  tranif0 pmos_2(y, net_8, bb);
  tranif0 pmos_3(net_8, vdd, a);
  tranif0 pmos_4(bb, vdd, b);
  tranif0 pmos_5(ab, vdd, a);
endmodule   /* muddlib07__xor2_1x */

module wordlib8__HalfAdder(A, Cin, Cout, Sum);
  input A;
  input Cin;
  output Cout;
  output Sum;

  supply1 vdd;
  supply0 gnd;
  muddlib07__and2_1x and2_1x_0(.a(A), .b(Cin), .y(Cout));
  muddlib07__xor2_1x xor2_1x_0(.a(A), .b(Cin), .y(Sum));
endmodule   /* wordlib8__HalfAdder */

module muddlib07__inv_1x(a, y);
  input a;
  output y;

  supply1 vdd;
  supply0 gnd;
  tranif1 nmos_0(gnd, y, a);
  tranif0 pmos_0(y, vdd, a);
endmodule   /* muddlib07__inv_1x */

module muddlib07__nand2_1x(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_5;

  tranif1 nmos_0(net_5, y, b);
  tranif1 nmos_1(gnd, net_5, a);
  tranif0 pmos_0(y, vdd, b);
  tranif0 pmos_1(y, vdd, a);
endmodule   /* muddlib07__nand2_1x */

module muddlib07__nor2_1x(a, b, y);
  input a;
  input b;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_9;

  tranif1 nmos_0(gnd, y, a);
  tranif1 nmos_1(gnd, y, b);
  tranif0 pmos_0(y, net_9, b);
  tranif0 pmos_1(net_9, vdd, a);
endmodule   /* muddlib07__nor2_1x */

module wordlib8__NAND8_reducer(inY, reduced_AND);
  output [7:0] inY;
  output reduced_AND;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_10, net_14, net_2, net_4, net_6, net_8;

  muddlib07__inv_1x inv_1x_0(.a(inY[7]), .y(net_14));
  muddlib07__nand2_1x nand2_1x_0(.a(net_0), .b(net_2), .y(net_8));
  muddlib07__nand2_1x nand2_1x_1(.a(net_4), .b(net_6), .y(net_10));
  muddlib07__nor2_1x nor2_1x_0(.a(net_14), .b(inY[6]), .y(net_0));
  muddlib07__nor2_1x nor2_1x_1(.a(inY[5]), .b(inY[4]), .y(net_2));
  muddlib07__nor2_1x nor2_1x_2(.a(inY[3]), .b(inY[2]), .y(net_4));
  muddlib07__nor2_1x nor2_1x_3(.a(inY[1]), .b(inY[0]), .y(net_6));
  muddlib07__nor2_1x nor2_1x_8(.a(net_8), .b(net_10), .y(reduced_AND));
endmodule   /* wordlib8__NAND8_reducer */

module wordlib8__PPGen_1bit(Double, Negate, Single, Yi, Yi_m1, PPi);
  input Double;
  input Negate;
  input Single;
  input Yi;
  input Yi_m1;
  output PPi;

  supply1 vdd;
  supply0 gnd;
  wire net_0, net_2, net_4;

  muddlib07__nand2_1x nand2_1x_0(.a(Single), .b(Yi), .y(net_0));
  muddlib07__nand2_1x nand2_1x_1(.a(net_0), .b(net_2), .y(net_4));
  muddlib07__nand2_1x nand2_1x_2(.a(Double), .b(Yi_m1), .y(net_2));
  muddlib07__xor2_1x xor2_1x_0(.a(net_4), .b(Negate), .y(PPi));
endmodule   /* wordlib8__PPGen_1bit */

module muddlib07__nand3_1x(a, b, c, y);
  input a;
  input b;
  input c;
  output y;

  supply1 vdd;
  supply0 gnd;
  wire net_15, net_4;

  tranif1 nmos_0(net_15, net_4, b);
  tranif1 nmos_1(net_4, y, c);
  tranif1 nmos_2(gnd, net_15, a);
  tranif0 pmos_0(y, vdd, c);
  tranif0 pmos_1(y, vdd, b);
  tranif0 pmos_2(y, vdd, a);
endmodule   /* muddlib07__nand3_1x */

module wordlib8__PPGen_9bits(Double, Negate, Single, Y, PP, Sign);
  input Double;
  input Negate;
  input Single;
  input [7:0] Y;
  output [8:0] PP;
  output Sign;

  supply1 vdd;
  supply0 gnd;
  wire HalfAdde_8_Cout, net_111, net_113, net_168, net_177, net_51, net_52;
  wire net_53, net_54, net_55, net_56, net_57, net_58, net_59, net_64, net_69;
  wire net_74, net_79, net_84, net_92;

  wordlib8__HalfAdder HalfAdde_0(.A(net_58), .Cin(net_59), .Cout(net_113), 
      .Sum(PP[7]));
  wordlib8__HalfAdder HalfAdde_1(.A(net_57), .Cin(net_64), .Cout(net_59), 
      .Sum(PP[6]));
  wordlib8__HalfAdder HalfAdde_2(.A(net_56), .Cin(net_69), .Cout(net_64), 
      .Sum(PP[5]));
  wordlib8__HalfAdder HalfAdde_3(.A(net_55), .Cin(net_74), .Cout(net_69), 
      .Sum(PP[4]));
  wordlib8__HalfAdder HalfAdde_4(.A(net_54), .Cin(net_79), .Cout(net_74), 
      .Sum(PP[3]));
  wordlib8__HalfAdder HalfAdde_5(.A(net_53), .Cin(net_84), .Cout(net_79), 
      .Sum(PP[2]));
  wordlib8__HalfAdder HalfAdde_6(.A(net_52), .Cin(net_92), .Cout(net_84), 
      .Sum(PP[1]));
  wordlib8__HalfAdder HalfAdde_7(.A(net_51), .Cin(Negate), .Cout(net_92), 
      .Sum(PP[0]));
  wordlib8__HalfAdder HalfAdde_8(.A(net_111), .Cin(net_113), 
      .Cout(HalfAdde_8_Cout), .Sum(PP[8]));
  wordlib8__NAND8_reducer NAND8_re_0(.inY(Y[7:0]), .reduced_AND(net_177));
  wordlib8__PPGen_1bit PPGen_1b_0(.Double(Double), .Negate(Negate), 
      .Single(Single), .Yi(Y[7]), .Yi_m1(Y[6]), .PPi(net_58));
  wordlib8__PPGen_1bit PPGen_1b_1(.Double(Double), .Negate(Negate), 
      .Single(Single), .Yi(Y[6]), .Yi_m1(Y[5]), .PPi(net_57));
  wordlib8__PPGen_1bit PPGen_1b_2(.Double(Double), .Negate(Negate), 
      .Single(Single), .Yi(Y[5]), .Yi_m1(Y[4]), .PPi(net_56));
  wordlib8__PPGen_1bit PPGen_1b_3(.Double(Double), .Negate(Negate), 
      .Single(Single), .Yi(Y[4]), .Yi_m1(Y[3]), .PPi(net_55));
  wordlib8__PPGen_1bit PPGen_1b_4(.Double(Double), .Negate(Negate), 
      .Single(Single), .Yi(Y[3]), .Yi_m1(Y[2]), .PPi(net_54));
  wordlib8__PPGen_1bit PPGen_1b_5(.Double(Double), .Negate(Negate), 
      .Single(Single), .Yi(Y[2]), .Yi_m1(Y[1]), .PPi(net_53));
  wordlib8__PPGen_1bit PPGen_1b_6(.Double(Double), .Negate(Negate), 
      .Single(Single), .Yi(Y[1]), .Yi_m1(Y[0]), .PPi(net_52));
  wordlib8__PPGen_1bit PPGen_1b_7(.Double(Double), .Negate(Negate), 
      .Single(Single), .Yi(Y[0]), .Yi_m1(gnd), .PPi(net_51));
  wordlib8__PPGen_1bit PPGen_1b_8(.Double(Double), .Negate(Negate), 
      .Single(Single), .Yi(Y[7]), .Yi_m1(Y[7]), .PPi(net_111));
  muddlib07__and2_1x and2_1x_0(.a(net_168), .b(PP[8]), .y(Sign));
  muddlib07__nand3_1x nand3_1x_0(.a(net_177), .b(Negate), .c(Double), 
      .y(net_168));
endmodule   /* wordlib8__PPGen_9bits */

module PPGen_wordslice(Double, Negate, Single, Y, PP0, PP1, PP2, PP3, Sign0, 
      Sign1, Sign2, Sign3);
  input [3:0] Double;
  input [3:0] Negate;
  input [3:0] Single;
  input [7:0] Y;
  output [8:0] PP0;
  output [8:0] PP1;
  output [8:0] PP2;
  output [8:0] PP3;
  output Sign0;
  output Sign1;
  output Sign2;
  output Sign3;

  supply1 vdd;
  supply0 gnd;
  wordlib8__PPGen_9bits PPGen_9b_0(.Double(Double[3]), .Negate(Negate[3]), 
      .Single(Single[3]), .Y(Y[7:0]), .PP(PP3[8:0]), .Sign(Sign3));
  wordlib8__PPGen_9bits PPGen_9b_1(.Double(Double[2]), .Negate(Negate[2]), 
      .Single(Single[2]), .Y(Y[7:0]), .PP(PP2[8:0]), .Sign(Sign2));
  wordlib8__PPGen_9bits PPGen_9b_2(.Double(Double[1]), .Negate(Negate[1]), 
      .Single(Single[1]), .Y(Y[7:0]), .PP(PP1[8:0]), .Sign(Sign1));
  wordlib8__PPGen_9bits PPGen_9b_3(.Double(Double[0]), .Negate(Negate[0]), 
      .Single(Single[0]), .Y(Y[7:0]), .PP(PP0[8:0]), .Sign(Sign0));
endmodule   /* PPGen_wordslice */
