`timescale 1ns/100ps
`include "reg4.v"
`include "Bitwise_And4.v"
`include "Bitwise_Xor4.v"

module sultans_of_swing(A_in,B_in,C_in,clk,reset,A_out,B_out,AND_out);

	input wire [3:0] A_in, B_in, C_in;
	input wire clk;
	input wire reset;
	output reg [3:0] A_out,B_out,AND_out;
	
//	wire [3:0] Aout,Bout,Cout;
	wire [3:0] reg_A_out, reg_B_out, reg_C_out,Bitwise_Xor4_out,ANDout;
	reg4 reg_A(.clk(clk),.reset(reset),.d(A_in),.q(reg_A_out));
	//assign A_out =reg_A_out;
	reg4 reg_B(.clk(clk),.reset(reset),.d(B_in),.q(reg_B_out));
	//assign B_out = reg_B_out;
	reg4 reg_C(.clk(clk),.reset(reset),.d(C_in),.q(reg_C_out));
	Bitwise_Xor4 Bitwise_Xor4_1(.A_x(reg_A_out),.B_x(reg_B_out),.C_x(Bitwise_Xor4_out));
	Bitwise_And4 Bitwise_And4_1(.A_a(Bitwise_Xor4_out),.B_a(reg_C_out),.C_a(ANDout));
	always@(posedge clk) begin
	 AND_out =ANDout;
	 A_out = reg_A_out;
	 B_out = reg_B_out;
	end
endmodule
