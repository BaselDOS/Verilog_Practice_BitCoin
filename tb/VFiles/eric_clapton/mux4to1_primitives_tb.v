`timescale 1ns/100ps
module mux4to1_primitives_tb;

	reg [3:0] A_In;
	reg [1:0] sellector;

	wire M_Out;	

	mux4to1_primitives m1(.a(A_In),.sel(sellector),.f(M_Out));
	
initial begin
	A_In <= 4'b1010;
	sellector <=2'b00;
	#2 sellector <=2'b01;
	#4 sellector <=2'b10;
	#8 sellector <=2'b11;
	// part 2
	#2 sellector <=2'b00;
	A_In <=4'b0101;
	#2 sellector <=2'b01;
	#3 sellector <=2'b11;
	#4 sellector <=2'b10;
	#5 sellector <=2'b00;
	#10
	$finish;
end
endmodule
