`timescale 1ns/100ps
`include "sultan_of_swing.v"
`include "dire_straits.v"
`include "eric_clapton.v"

module wembley_88(A_in, B_in, C_in, clk, reset,Yout);

	input wire [3:0] A_in, B_in, C_in;
	input wire clk;
	input wire reset;
	output reg Yout;
		// help signals.	
	wire [3:0] A_out, B_out, AND_out, A_e, B_e, C_e;
	wire Yo;
		//calculating the device's outputs
	sultans_of_swing sultan(.A_in(A_in),.B_in(B_in),.C_in(C_in),.clk(clk),.reset(reset),.A_out(A_out),.B_out(B_out),.AND_out(AND_out));
	dire_straits dire(.A_out(A_out),.B_out(B_out),.AND_out(AND_out),.A_e(A_e),.B_e(B_e),.C_e(C_e));
	eric_clapton eric(.A_e(A_e),.B_e(B_e),.C_e(C_e),.clk(clk),.reset(reset),.Yout(Yo));
		//updating the output when the clock is high.
	always@(posedge clk) assign Yout=Yo;
endmodule
