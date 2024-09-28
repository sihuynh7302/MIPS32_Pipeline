`timescale 1ns / 1ps

module JRControl(Control, ALUOp, FunctCode);
input [1:0] ALUOp;
input [5:0] FunctCode;
output Control;

assign Control = ({ALUOp,FunctCode} == 8'b10001000) ? 1'b1 : 1'b0;
endmodule
