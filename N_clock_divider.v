`timescale 1ns / 1ps

module N_clock_divider(clk_out, clk_in, reset);
parameter N = 18, n = 200000;
output clk_out;
input clk_in, reset;

wire [N-1:0] Q;
reg out1;


N_bit_counter #(N) counter (Q, clk_out, 4'b0000, reset, clk_in, 1'b1);
 
always @(posedge clk_in, posedge reset) begin
out1 = 0;
if (reset ==  1'b1) out1 <= 0;
else if ( (Q + 1) == (n-1)) out1 <= 1;
else out1 <= 0;
end 
assign clk_out = out1;
endmodule
