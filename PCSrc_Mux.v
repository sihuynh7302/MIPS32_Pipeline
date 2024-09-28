`timescale 1ns / 1ps


module PCSrc_Mux(pcNext, pc4,BranchAddr,jumpAddress, RSout,PCorBranch,Jump,jr);
input [31:0] pc4, BranchAddr,jumpAddress, RSout;
input PCorBranch, Jump, jr;
output reg [31:0] pcNext;

always @(*)begin
    case({PCorBranch,Jump,jr})
        3'b000: pcNext <= pc4;
        3'b100: pcNext <= BranchAddr;
        3'b010: pcNext <= jumpAddress;
        3'b001: pcNext <= RSout;
        default: pcNext <= 0;
    endcase
end

endmodule
