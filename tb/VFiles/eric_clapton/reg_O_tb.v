`timescale 1ns / 100ps

module reg_O_tb;
//Inputs:   
    reg  D_in;
    reg clk = 1'b1;    
    reg reset;
		//Output:
    wire Q_Out; // de facto calculated 
		//Test-bench:
	reg_O UUT (.d(D_in), .reset(reset),.q(Q_Out), .clk(clk));
		// our clock period
	always #1 clk = ~clk; 

initial begin
		//initialization.
	D_in = 1'b0;
	clk    = 1;
	reset  = 0;
		//checking the output with low reset signal.
	#1 D_in = 1'b1;
	#1 D_in = 1'b1;
	#1 D_in = 1'b1;
		//checking the output with high reset signal.
	#1 reset = 1;
	#1 D_in = 1'b1;
	#1 D_in = 1'b1;
		// another output test with low reset signal.
	#1 reset = 0;
	#1 D_in = 1'b1;
	#1 D_in = 1'b0;
	#1 D_in = 1'b1;
		// waiting 10 clock cycles then finishing the test's.
	#10
	$finish;
end
endmodule
