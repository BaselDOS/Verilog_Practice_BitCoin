`timescale 1ns/100ps

module reg_O(

        input wire clk,
        input wire reset,
    	input wire d, 
    	output reg q);
	
//	reg [3:0] q;
	always@(posedge clk)
	 if (~reset)
	 begin
	  q<=d;
	 end
	 else
	 begin
	  q<=1'b0;
	 end
endmodule
