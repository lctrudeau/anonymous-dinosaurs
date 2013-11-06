module testbench();
    logic clk;
    logic [7:0] x;
	logic [3:0] single, double, neg;
    logic [7:0] vectors[256:0], currentvec;
    logic [8:0] vectornum, errors;
	integer out;
    
    // The device under test
	mbe_4x dut(x, single, double, neg);
    
    // read test vector file and initialize test
	initial begin
		$readmemb("input.txt", vectors);
		out = $fopen("output.txt","w");
		vectornum = 0; errors = 0;
	end
    // generate a clock to sequence tests
    always begin
       clk = 1; #10; clk = 0; #10;
    end
      
    // apply test
    always @(posedge clk) begin
       currentvec = vectors[vectornum];
	   x = currentvec;
       if (vectornum === 256) begin
         $display("Completed %d tests with %d errors.", 
                  vectornum, errors);
                  $fclose(out);
         $stop;
       end
    end
    
    // check if test was sucessful and apply next one
    always @(negedge clk) begin
//		$fwrite(out, "%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h\n", 
		$fwrite(out, "%b%h%h%h%h%h%h%h%h%h%h%h%h\n", 
//      x[7], x[6], x[5], x[4], x[3], x[2], x[1], x[0],
		x,
		single[3], double[3], neg[3],
		single[2], double[2], neg[2],
		single[1], double[1], neg[1],
		single[0], double[0], neg[0]);
       vectornum = vectornum + 1;
    end
endmodule

module mbe_4x
(
input [7:0] x,
output [3:0] single, double, neg
);

mbe_1x mbe3(x[7:5],single[3],double[3],neg[3]);
mbe_1x mbe2(x[5:3],single[2],double[2],neg[2]);
mbe_1x mbe1(x[3:1],single[1],double[1],neg[1]);
mbe_1x mbe0({x[1:0],1'b0},single[0],double[0],neg[0]);

endmodule

module mbe_1x
(
input [2:0] x,
output single, double, neg
);

assign single = (x[1] & ~x[0]) | (~x[1] & x[0]);
assign double = (x[2] & ~x[1] & ~x[0]) | (~x[2] & x[1] & x[0]);
assign neg    = x[2];

endmodule