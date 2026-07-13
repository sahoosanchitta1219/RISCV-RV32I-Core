module single_cycle_top (
    input clk,
    input reset,
    output [31:0] WriteData,
    output [31:0] ALU_OUTPUT,
    output MemWrite
);

    wire [31:0] PC;
    wire [31:0] Instr;
    wire [31:0] ReadData;

    Instruction_memory imem (
        .address(PC),
        .data(Instr)
    );

    Single_Cycle_Core core (
        .clk(clk),
        .reset(reset),
        .Instr(Instr),
        .ReadData(ReadData),
        .PC(PC),
        .ALUResult(ALU_OUTPUT),
        .WriteData(WriteData),
        .MemWrite(MemWrite)
    );

    Data_mem dmem (
        .A(ALU_OUTPUT),
        .WD(WriteData),
        .WE(MemWrite),
        .clk(clk),
        .RD(ReadData)
    );

endmodule
