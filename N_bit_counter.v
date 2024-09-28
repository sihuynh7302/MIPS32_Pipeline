`timescale 1ns / 1ps

module N_bit_counter(Q, load, D, reset, clk, CE);
parameter N = 3;
output [N-1:0] Q;
input [N-1:0] D;
input load, reset, clk, CE;

reg [N-1:0] Q;

always @(posedge reset or posedge clk)
if (reset == 1'b1) Q <= 0;
else if (load == 1'b1) Q <= D;
else if (CE == 1'b1) Q <= Q + 1;
else Q <= Q;

endmodule
