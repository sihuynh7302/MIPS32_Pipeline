`timescale 1ns / 1ps

module simplereg(dataOut, dataIn, W_en, reset, clock);
parameter N = 32;
input W_en, reset, clock;
input [N-1:0] dataIn;
output [N-1:0] dataOut;
reg [N-1:0] mem;

assign dataOut = mem;
always @(posedge clock or posedge reset) begin
if (reset)
    mem <= 0;
else begin
    if(W_en)
       mem <= dataIn;
end
end
endmodule
