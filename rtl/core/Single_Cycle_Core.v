module Single_Cycle_Core (
    input clk,
    input reset,
    input [31:0] Instr,
    input [31:0] ReadData,
    output [31:0] PC,
    output [31:0] ALUResult,
    output [31:0] WriteData,
    output MemWrite
);
    wire ALUSrc, RegWrite, Zero, PCSrc, Jump, Branch;
    wire [1:0] ResultSrc, ImmSrc;
    wire [3:0] ALUControl;
    
    Control_Unit control_unit_inst (
        .op(Instr[6:0]),
        .funt3(Instr[14:12]),
        .funct7b5(Instr[30]),
        .zero(Zero),
        .ResultSrc(ResultSrc),
        .ALUSrc(ALUSrc),
        .PCSrc(PCSrc), 
        .RegWrite(RegWrite),
        .MemWrite(MemWrite),
        .Jump(Jump),
        .ImmSrc(ImmSrc),
        .ALUControl(ALUControl)
    );

    core_datapath datapath_inst (
        .reset(reset),
        .clk(clk),
        .PCSrc(PCSrc),
        .Instr(Instr),
        .ImmSrc(ImmSrc),
        .ALUSrc(ALUSrc),
        .con(ALUControl),
        .ReadData(ReadData),
        .ResultSrc(ResultSrc),
        .we3(RegWrite),
        .res(ALUResult),
        .zero(Zero),
        .Pc(PC),
        .rd2(WriteData)
    );

endmodule
