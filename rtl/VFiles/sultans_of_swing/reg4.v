`timescale 1ns/100ps

module reg4(

        input wire clk,
        input wire reset,
    	input wire [3:0] d, 
    	output reg [3:0] q);
		// transfer d to q when the clk bit is high and reset bit is
		// low, and if reset bit is high then set the output to zero.
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
