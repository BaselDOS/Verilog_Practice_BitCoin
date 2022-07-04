`timescale 1ns/100ps

module sultans_of_swing_tb;
//Inputs:   
    reg [3:0] Ain, Bin, Cin;

    reg clk = 1'b1;    
    reg reset;

//Outputs:
    wire [3:0] A_out,B_out,AND_out; // de facto calculated 



//Test-bench:
	   

    sultans_of_swing UUT (.A_out(A_out),.B_out(B_out),.AND_out(AND_out),.reset(reset),.clk(clk),.A_in(Ain),.B_in(Bin),.C_in(Cin));
//number of bits in each input and output according to the tabs.
//		4 		4 		4 	   1 		1 		1

// our clock period
// this is just an example for a period, insignificant at the moment.
	always #1 clk = ~clk; 

initial begin

	Ain = 4'b1011;
	Bin=4'b0110;
	Cin=4'b0101;
	//A_out=4'b0000;
	//B_out=4'b0000;
	//AND_out=4'b0000;
	clk    = 1;
	reset  = 0;
	#3
	#1 Ain = 4'b1111;
	#1 Bin = 4'b1101;
	#1 Cin = 4'b1111;
	#1 reset = 1;
	Ain = 4'b1111;
	Bin = 4'b1111;
	Cin=4'b1111;
	#3
	reset = 0;
	#1 Ain = 4'b0101;
	#1 Bin = 4'b1010;
	#1 Cin = 4'b1100;
	#10
	$finish;
 end
endmodule
