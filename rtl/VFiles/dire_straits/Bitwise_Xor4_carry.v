`timescale 1ns/100ps

module Bitwise_Xor4_carry(S_s ,A_s, C_s);

	output reg [3:0] C_s;
	input wire [3:0] A_s;
	input wire S_s;

	wire [3:0]concat={S_s,S_s,S_s,S_s};
	always@(A_s,S_s)begin	
	 C_s = A_s ^ concat;
	 //assign C_s[1] = A_s[1] ^ S_s;
	 //assign C_s[2] = A_s[2] ^ S_s;
	 //assign C_s[3] = A_s[3] ^ S_s;
	end
endmodule
