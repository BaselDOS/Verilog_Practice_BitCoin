`timescale 1ns/100ps

module reg_O(

        input wire clk,
        input wire reset,
    	input wire d, 
    	output reg q);
		// transfer the input to the output when clk signal is high
		// and reset signal is low, and set the output to zero when
		// the clk bit is high and the reset signal is also high.
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
