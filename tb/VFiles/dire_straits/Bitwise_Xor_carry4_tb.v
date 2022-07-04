`timescale 1ns / 1ps

module Bitwise_Xor_carry4_tb;
		//Inputs:   
    reg [3:0] A_read;
    reg S_read;
		//Outputs:
     wire [3:0] C_read;
		//Test-bench:
    Bitwise_Xor4_carry UUT (.A_s(A_read), .S_s(S_read), .C_s(C_read));

initial begin

	A_read = 4'b0000;
	S_read = 1;
	#1 A_read =4'b0100;
	#2 A_read=4'b0011;
	#3
	S_read=0;
	A_read =4'b0001;
	#3 A_read=4'b1111;
	#10
	$finish;
end
endmodule
