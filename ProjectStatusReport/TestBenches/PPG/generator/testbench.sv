module testbench();
	logic clk;
	logic [3:0] Double, Negate, Single;
	logic [7:0] Y;
	logic Sign3, Sign2, Sign1, Sign0;
	logic [8:0] PP0, PP1, PP2, PP3;
    logic [19:0] vectors[1048576:0], currentvec;
    logic [20:0] vectornum, errors;
	integer out;
    
    // The device under test
	PPgen_wordslice dut(Double,Negate,Single,Y,Sign3,Sign2,Sign1,Sign0,PP0,PP1,PP2,PP3);
    
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
	   Double = currentvec[19:16];
	   Negate = currentvec[15:12];
	   Single = currentvec[11:8];
	   Y = currentvec[7:0];
       if (vectornum === 1048576) begin
         $display("Completed %d tests with %d errors.", 
                  vectornum, errors);
                  $fclose(out);
         $stop;
       end
    end
    
    // check if test was sucessful and apply next one
    always @(negedge clk) begin
       $fwrite(out, "%b%b%b%b%b%b%b%b%b\n", 
      currentvec,
		Sign3,PP3,
		Sign2,PP2,
		Sign1,PP1,
		Sign0,PP0);
       vectornum = vectornum + 1;
    end
endmodule
