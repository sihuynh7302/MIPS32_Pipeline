`timescale 1ns / 1ps

module tri_state_buff(out, in, switch);
parameter N = 4;
output [N-1:0] out;
input [N-1:0] in;
input switch;
reg [N-1:0] out = 0;

always @(switch)
if (switch == 1'b1) out <= 'bZ;
else out <= in;
endmodule
