`timescale 1ns / 1ps

module wembley_88_tb;
		//Inputs:   
    reg [3:0] A_read;
    reg [3:0] B_read;
    reg [3:0] C_read;
    reg clk = 1'b1;    
    reg reset;
		//Outputs:
    wire Yout;  
		//Test-bench:	   
    wembley_88 UUT (.A_in(A_read), .B_in(B_read), .C_in(C_read), .clk(clk), .reset(reset), .Yout(Yout));
		//clock period
	always #1 clk = ~clk; 

initial begin

	A_read = 0000;
	B_read = 0000;
	C_read = 0000;
	clk    = 1;
	reset  = 0;
	#3
	A_read=4'b0101;
	B_read=4'b1010;
	C_read=4'b1110;
	#3
	A_read=4'b1101;
	B_read=4'b0001;
	C_read=4'b0000;
	#10
	$finish;
end
endmodule
