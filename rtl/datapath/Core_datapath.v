`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 10:38:53
// Design Name: 
// Module Name: Core_datapath
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


module core_datapath (
    input reset,
    input clk,
    input PCSrc,
    input [31:0] Instr,
    input [1:0] ImmSrc,
    input ALUSrc,
    input [3:0] con,
    input [31:0] ReadData,
    input [1:0] ResultSrc,
    input we3,
    output [31:0] res,
    output zero,
    output [31:0] Pc,
    output [31:0] rd2
);

    wire [31:0] PCNext;
    
    PC pc1 (
        .i_pc(PCNext),
        .clk(clk),
        .reset(reset),
        .o_pc(Pc)
    );
    
    wire [31:0] PCPlus4;
    Pc_Plus_4 pc2 (
        .Pc(Pc),
        .PCPlus4(PCPlus4)
    );
    
    wire [31:0] ImmExt;
    wire [31:0] PcTarget;
    Pc_Target pc3 (
        .Pc(Pc),
        .ImmExt(ImmExt),
        .PcTarget(PcTarget)
    );
    
    PC_Mux pc4 (
        .PC_Plus_4(PCPlus4),
        .PC_Target(PcTarget),
        .PCSrc(PCSrc),
        .PC_Next(PCNext)
    );
    
    wire [31:0] wd3;
    wire [31:0] rd1;
    REG_MEM_BLOCK regmem (
        .ra2(Instr[24:20]),
        .ra1(Instr[19:15]),
        .ra3(Instr[11:7]),
        .wd3(wd3),
        .we3(we3),
        .clk(clk),
        .rd1(rd1),
        .rd2(rd2)
    );
    
    Extend ext (
        .Instr(Instr[31:7]),
        .ImmSrc(ImmSrc),
        .ImmExt(ImmExt)
    );
    
    wire [31:0] B;
    ALU_Mux alu1 (
        .WD(rd2),
        .ImmExt(ImmExt),
        .ALUSrc(ALUSrc),
        .B(B)
    );
    
    ALU alu2 (
        .A(rd1),
        .B(B),
        .con(con),
        .res(res),
        .zero(zero)
    );
    
    Result_Mux resmux (
        .ALUResult(res),
        .ReadData(ReadData),
        .PC_Plus_4(PCPlus4),
        .ResultSrc(ResultSrc),
        .Result(wd3)
    );

endmodule
