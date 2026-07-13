`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 14:39:54
// Design Name: 
// Module Name: Control_Unit
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


module Control_Unit(
	input [6:0]op,
	input [2:0]funt3,
	input funct7b5,
	input zero,
	output [1:0]ResultSrc,
	output ALUSrc,
	output PCSrc,
	output RegWrite,
	output MemWrite,
	output Jump,
	output [1:0]ImmSrc,
	output [3:0]ALUControl
);
    wire [1:0] ALUOp;
    wire Branch;
    Main_Decoder main_dec (
        .op(op),
        .ResultSrc(ResultSrc),
        .MemWrite(MemWrite),
        .ALUSrc(ALUSrc),
        .RegWrite(RegWrite),
        .Jump(Jump),
        .Branch(Branch),
        .ImmSrc(ImmSrc),
        .ALUOp(ALUOp)
    );
    ALUDecoder alu_dec (
        .opb5(op[5]), 
        .funct3(funct3),
        .funct7b5(funct7b5),
        .ALUOp(ALUOp),
        .ALUControl(ALUControl)
    );
    assign PCSrc = Branch &zero|Jump;
endmodule
