`timescale 1ns / 1ps

module Bitwise_And_tb;
//Inputs:   
    reg [3:0] A_read, B_read;

//Outputs:
    //reg [3:0] C_read; // de facto calculated    
    wire [3:0] C_read;
//Test-bench:
	   

    Bitwise_And4 UUT (.A_a(A_read), .B_a(B_read), .C_a(C_read));

initial begin

	A_read = 4'b0000;
	B_read = 4'b1110;
	#1 A_read =4'b0100;
	#2 A_read=4'b0011;
	#3
	B_read=4'b1011;
	A_read =4'b0001;
	#3 A_read=4'b1111;
	#10
	$finish;
end
endmodule
