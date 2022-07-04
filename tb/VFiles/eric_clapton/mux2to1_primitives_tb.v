//timescale 1ns / 1ps
module mux2to1_primitives_tb;

	reg [1:0] A_In;
	reg sellector;

	wire M_Out;

	mux2to1_primitives m1(.a(A_In),.sel(sellector),.f(M_Out));
	
initial begin
	A_In <= 2'b10;
	sellector <=1'b1;
	#2 sellector <=1'b0;
	#4 sellector <=1'b1;
	#8 sellector <=1'b0;
	// part 2
	#2 sellector <=1'b1;
	#3 A_In <=2'b01;
	#2 sellector <=1'b0;
	#3 sellector <=1'b1;
	#10
	$finish;
end
endmodule
