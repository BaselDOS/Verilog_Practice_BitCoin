`timescale 1ns/100ps

module mux2to1_always(f ,a, sel);

	output f;
	input [1:0] a;
	input sel;

	reg f;
	always @(sel)
	 case(sel)
	  1'b0:f<=a[0];
	  1'b1:f<=a[1];
	  default:f<=a[0];
	 endcase

endmodule
