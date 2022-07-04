`timescale 1ns / 1ps

module eric_clapton_tb;
		//Inputs:   
    reg [3:0] A_read;
    reg [3:0] B_read;
    reg [3:0] C_read;
    reg clk = 1'b1;    
    reg reset;
		//Outputs:
    wire w_Y; // de facto calculated 
		//Test-bench:
    eric_clapton UUT (.A_e(A_read), .B_e(B_read), .C_e(C_read), .clk(clk), .reset(reset), .Yout(w_Y));
		//clock period
	always #1 clk = ~clk; 

initial begin
		//initialization.
	A_read = 0000;
	B_read = 0000;
	C_read = 0000;
	clk    = 1;
	reset  = 0;
	#3	// just to sapirate between the test's.
	A_read=4'b0101;
	B_read=4'b1010;
	C_read=4'b1110;
	#3
	A_read=4'b1101;
	B_read=4'b0001;
	C_read=4'b0000;
	#10
	$finish;
end
endmodule
