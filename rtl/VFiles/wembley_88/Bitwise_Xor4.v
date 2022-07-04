`timescale 1ns/100ps

module Bitwise_Xor4(A_x ,B_x, C_x);

	output wire [3:0] C_x;
	input wire [3:0] A_x;
	input wire [3:0] B_x;
	
	assign C_x = A_x ^ B_x;
endmodule
