module testbench();
	logic clk;
	logic [3:0] Double, Negate, Single;
	logic [7:0] Y;
	logic Sign3, Sign2, Sign1, Sign0;
	logic [8:0] PP0, PP1, PP2, PP3;
    logic [59:0] vectors[1048576:0], currentvec;
    logic [20:0] vectornum, errors;
    
    // The device under test
	PPGen_wordslice dut(Double, Negate, Single, Y, PP0, PP1, PP2, PP3, Sign0, Sign1, Sign2, Sign3);

    // read test vector file and initialize test
	initial begin
		$readmemb("output.txt", vectors);
		vectornum = 0; errors = 0;
	end
    // generate a clock to sequence tests
    always begin
       clk = 1; #10; clk = 0; #10;
    end
      
    // apply test
    always @(posedge clk) begin
       currentvec = vectors[vectornum];
	   Double = currentvec[59:56];
	   Negate = currentvec[55:52];
	   Single = currentvec[51:48];
	   Y = currentvec[47:40];
       if (vectornum === 1048576) begin
         $display("Completed %d tests with %d errors.", 
                  vectornum, errors);
         $stop;
       end
    end
    // check if test was sucessful and apply next one
    always @(negedge clk) begin
       if (
	   (Sign3 !== currentvec[39] | PP3 !== currentvec[38:30]) |
	   (Sign2 !== currentvec[29] | PP2 !== currentvec[28:20]) |
	   (Sign1 !== currentvec[19] | PP1 !== currentvec[18:10]) |
	   (Sign0 !== currentvec[9] | PP0 !== currentvec[8:0])) begin
          $display("Error: at %b", currentvec[59:40]);
          errors = errors + 1;
       end
       vectornum = vectornum + 1;
    end
endmodule
