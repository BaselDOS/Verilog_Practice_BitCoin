`timescale 1ns / 1ps

module Bitwise_Not4_tb;
		//Inputs:   
    reg [3:0] A_read;
		//Outputs: 
    wire [3:0] A_inv_read;
		//Test-bench:
    Bitwise_Not4 UUT (.a_in(A_read), .a_inv(A_inv_read));

initial begin

	A_read = 0000;
	#1 A_read =4'b0100;
	#2 A_read=4'b0011;
	#3
	A_read =4'b0001;
	#3 A_read=4'b1111;
	#10
	$finish;
end
endmodule
