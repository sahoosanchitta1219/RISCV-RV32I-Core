`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 12:29:01
// Design Name: 
// Module Name: Main_Module_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns/1ps

module Main_Decoder_tb;

reg [6:0] op;
wire RegWrite;
wire [1:0] ImmSrc;
wire ALUSrc;
wire MemWrite;
wire [1:0] ResultSrc;
wire Branch;
wire [1:0] ALUOp;
wire Jump;

Main_Decoder uut(
    .op(op),
    .RegWrite(RegWrite),
    .ImmSrc(ImmSrc),
    .ALUSrc(ALUSrc),
    .MemWrite(MemWrite),
    .ResultSrc(ResultSrc),
    .Branch(Branch),
    .ALUOp(ALUOp),
    .Jump(Jump)
);

initial begin
    op=7'b0000000;
    #10 op=7'b0000011;
    #10 op=7'b0100011;
    #10 op=7'b0110011;
    #10 op=7'b0010011;
    #10 op=7'b1100011;
    #10 op=7'b1101111;
    #10 op=7'b1100111;
    #10 op=7'b0111011;
    #10 op=7'b0010111;
    #10 op=7'b1111111;
    #10 op=7'b1010101;
    #10 op=7'b0001000;
    #10 $finish;
end

endmodule