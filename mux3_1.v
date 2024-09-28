`timescale 1ns / 1ps

module Mux3_1(sel,A,B,C,F);
parameter N = 32;
input [1:0] sel;
input [N-1:0] C, A, B;
output [N-1:0] F;
reg [N-1:0] F;
always @(A,B,C,sel) begin
case (sel)
   2'b00: F<=A;
   2'b01: F<=B;
   2'b10: F<=C;
   default: F<=0;
endcase
end
endmodule
