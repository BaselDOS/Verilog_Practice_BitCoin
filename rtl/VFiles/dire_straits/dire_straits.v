`timescale 1ns/100ps

`include "unsigned_adder4.v"
`include "Bitwise_Not4.v"
`include "Bitwise_Xor4_carry.v"

module dire_straits(A_e,B_e,C_e,A_out,B_out,AND_out);

	output reg [3:0] A_e, B_e, C_e;
	input wire [3:0] AND_out, A_out, B_out;
		// wire variables to hold the devices outputs.    
	wire carry4;
	wire [3:0] Sum_1,Not_out,Xor_out;
		// calculating the sum and the output of the bitwise
		// operations
	unsigned_adder4 adder_1 (.a(A_out),.b(B_out),.C_Out(carry4),.Sum_O(Sum_1));
	Bitwise_Xor4_carry carry_Xor(.A_s(AND_out),.S_s(carry4),.C_s(Xor_out));
	Bitwise_Not4 Not_1(.a_in(AND_out),.a_inv(Not_out));
		// assigning the results at evry change in the devices
		// outputs.
	always@(Sum_1,Xor_out,Not_out)begin
	 assign A_e=Sum_1;
	 assign B_e=Xor_out;
	 assign C_e=Not_out;
	end
endmodule
