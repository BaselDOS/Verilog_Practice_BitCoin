`timescale 1ns/100ps

module dire_straits_tb;
		//Inputs:   
    reg [3:0] A_out, B_out, AND_out;
		//Outputs:
    wire [3:0] A_e,B_e,C_e; // de facto calculated 
		//Test-bench:
	   dire_straits UUT (.A_out(A_out),.B_out(B_out),.AND_out(AND_out),.A_e(A_e),.B_e(B_e),.C_e(C_e));
		//clock period
initial begin

	A_out = 4'b1011;
	B_out=4'b0110;
	AND_out=4'b0101;
	#3
	#1 A_out = 4'b1111;
	#1 B_out = 4'b1101;
	#1 AND_out = 4'b1111;
	#3 
	A_out = 4'b1111;
	B_out = 4'b1111;
	AND_out=4'b1111;
	#3
	A_out = 4'b0101;
	B_out = 4'b1010;
	AND_out = 4'b1100;
	#10
	$finish;
 end
endmodule
