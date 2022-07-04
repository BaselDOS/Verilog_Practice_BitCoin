`timescale 1ns/100ps

module mux4to1_always(f ,a, sel);

	output f;
	input [3:0] a;
	input [1:0] sel;

	reg f;
	always @(sel)
	 case(sel)
	  2'b00:f<=a[0];
	  2'b01:f<=a[1];
	  2'b10:f<=a[2];
	  2'b11:f<=a[3];
	  default:f<=a[0];
	 endcase

endmodule
