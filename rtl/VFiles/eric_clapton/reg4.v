`timescale 1ns/100ps

module reg4(

        input wire clk,
        input wire reset,
    	input wire [3:0] d, 
    	output reg [3:0] q);
		// transfer the input to the output when the clk signal is
		// high and the reset signal is low, and set the output to
		// zero when the reset bit is high.
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
