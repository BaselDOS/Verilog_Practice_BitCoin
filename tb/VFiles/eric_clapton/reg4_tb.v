`timescale 1ns / 100ps

module reg4_tb;
		//Inputs:   
    reg [3:0] D_in;
    reg clk = 1'b1;    
    reg reset;
		//Outputs:
    wire [3:0] Q_Out; 
		//Test-bench:
    reg4 UUT (.d(D_in), .reset(reset),.q(Q_Out), .clk(clk));
		//clock period
	always #1 clk = ~clk; 

initial begin

	D_in = 4'b0000;
	clk    = 1;
	reset  = 0;
	#1 D_in = 4'b0001;
	#1 D_in = 4'b0010;
	#1 D_in = 4'b0011;
	#1 reset = 1;
	#1 D_in = 4'b1010;
	#1 D_in = 4'b0111;
	#1 reset = 0;
	#1 D_in = 4'b0010;
	#1 D_in = 4'b0011;
	#1 D_in = 4'b0100;
	#10
	$finish;
end
endmodule
