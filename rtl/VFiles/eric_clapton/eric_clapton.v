`timescale 1ns/100ps

`include "reg4.v"
`include "reg_O.v"
`include "mux4to1_always.v"
`include "mux4to1_assign.v"
`include "mux4to1_primitives.v"


module eric_clapton(A_e,B_e,C_e,clk,reset,Yout);

	input wire [3:0] A_e, B_e, C_e;     
	input wire clk;
	input wire reset;
	output reg Yout;
		// help variables to hold the device's outputs.
	wire [3:0] regA_out,regB_out,regC_out,mux_as_in;
	wire [1:0] mux_as_sel,mux_al_sel,mux_pr_sel;
	wire mux_as_out, mux_al_out, mux_pr_out,Yo;
		// calculating the device's outputs.
	reg4 regA(.d(A_e),.clk(clk),.reset(reset),.q(regA_out));
	reg4 regB(.d(B_e),.clk(clk),.reset(reset),.q(regB_out));
	reg4 regC(.d(C_e),.q(regC_out),.clk(clk),.reset(reset));
		//updating the mux's sellectors.
	assign mux_al_sel = regB_out[1:0];
	assign mux_as_sel = ~mux_al_sel;
	assign mux_pr_sel =regB_out[3:2];
		// calculating the mux's outputs.
	mux4to1_always mux4to1_al(.a(regA_out),.sel(mux_al_sel),.f(mux_al_out));
	mux4to1_primitives mux4to1_pr(.a(regC_out),.f(mux_pr_out),.sel(mux_pr_sel));
		// updating the last mux input as requered.
	assign mux_as_in ={1'b1,1'b0,mux_pr_out,mux_al_out};
		// calculating the final result.
	mux4to1_assign mux_as(.a(mux_as_in),.f(mux_as_out),.sel(mux_as_sel));
	reg_O reg_out(.d(mux_as_out),.q(Yo),.clk(clk),.reset(reset));
		//updating the final final output every time it changes.
	always@(Yo) Yout <= Yo;
endmodule
