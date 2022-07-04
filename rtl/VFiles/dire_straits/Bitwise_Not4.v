`timescale 1ns/100ps
module Bitwise_Not4(a_in,a_inv);
	input wire [3:0] a_in;
	output reg [3:0] a_inv;
	always@(a_in)
	 assign a_inv = ~a_in;
endmodule
