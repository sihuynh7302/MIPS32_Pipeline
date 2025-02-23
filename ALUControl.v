`timescale 1ns / 1ps

module ALUControl(Control, ALUOp, FunctCode);
input [1:0] ALUOp;
input [5:0] FunctCode;
output reg[3:0] Control;
wire [7:0] alufunc;
assign alufunc = {ALUOp, FunctCode};
always @(alufunc) begin
    casez (alufunc) 
        8'b00??????: Control <= 2;
        8'b01??????: Control <= 6;
        8'b11??????: Control <= 0;
        8'b10100000: Control <= 2;
        8'b10100010: Control <= 6;
        8'b10100100: Control <= 0;
        8'b10100101: Control <= 1;
        8'b10101010: Control <= 7;
    endcase
end
endmodule
