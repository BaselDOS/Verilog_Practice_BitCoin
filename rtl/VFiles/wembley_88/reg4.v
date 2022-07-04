`timescale 1ns/100ps

module reg4(

        input wire clk,
        input wire reset,
    	input wire [3:0] d, 
    	output reg [3:0] q);
	
//	reg [3:0] q;
	always@(posedge clk)
	 if (~reset)
	 begin
	  q<=d;
	 end
	 else
	 begin
	  q<=1'h0;
	 end
endmodule
