`timescale 1ns / 1ps

module Bitwise_Xor_tb;
//Inputs:   
    reg [3:0] A_read, B_read;

//Outputs:
    //reg [3:0] C_read; // de facto calculated    
    wire [3:0] C_read;
//Test-bench:
	   

    Bitwise_Xor4 UUT (.A_x(A_read), .B_x(B_read), .C_x(C_read));

initial begin

	A_read = 4'b0000;
	B_read = 4'b1010;
	#1 A_read =4'b0100;
	#2 A_read=4'b0011;
	#3
	B_read=4'b1111;
	A_read =4'b0001;
	#3 A_read=4'b1111;
	#10
	$finish;
end
endmodule
