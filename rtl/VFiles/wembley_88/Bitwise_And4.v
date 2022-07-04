`timescale 1ns/100ps

module Bitwise_And4(A_a ,B_a, C_a);

	output wire [3:0] C_a;
	input wire [3:0] A_a;
	input wire [3:0] B_a;
	
	assign C_a = A_a & B_a;
endmodule
