`timescale 1ns / 1ps

module unsigned_adder4_tb;
		//Inputs:   
    reg [3:0] A_read;
    reg [3:0] B_read;
		//Outputs:
    wire C_read; 
    wire [3:0] Sum_read;
		//Test-bench:
    unsigned_adder4 UUT (.a(A_read), .b(B_read), .C_Out(C_read),.Sum_O(Sum_read));

initial begin

	A_read = 0000;
	B_read = 0000;
	#1 A_read =4'b0100;
	#2 B_read=4'b0011;
	#3
	A_read =4'b0001;
	#3 B_read=4'b1111;
	#10
	$finish;
end
endmodule
