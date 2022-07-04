`timescale 1ns/100ps
module unsigned_adder4(a,b,C_Out,Sum_O);
	input wire [3:0] a;
	input wire [3:0] b;
	output reg [3:0] Sum_O;
	output reg C_Out;
	
	always@(a,b)
  	 assign {C_Out, Sum_O} =a + b ;
endmodule 

