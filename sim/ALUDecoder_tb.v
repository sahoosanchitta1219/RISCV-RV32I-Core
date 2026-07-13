`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 11:37:29
// Design Name: 
// Module Name: ALUDecoder_tb
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

module ALUDecoder_tb;

reg opb5;
reg [2:0] funct3;
reg funct7b5;
reg [1:0] ALUOp;
wire [3:0] ALUControl;

ALUDecoder uut(
    .opb5(opb5),
    .funct3(funct3),
    .funct7b5(funct7b5),
    .ALUOp(ALUOp),
    .ALUControl(ALUControl)
);

initial begin
    opb5=0;
    funct3=3'b000;
    funct7b5=0;
    ALUOp=2'b00;

    #10 ALUOp=2'b01;

    #10 ALUOp=2'b10; funct3=3'b000; funct7b5=0; opb5=0;
    #10 funct3=3'b000; funct7b5=1; opb5=1;
    #10 funct3=3'b001;
    #10 funct3=3'b010;
    #10 funct3=3'b011;
    #10 funct3=3'b100;
    #10 funct3=3'b101; funct7b5=0;
    #10 funct3=3'b101; funct7b5=1;
    #10 funct3=3'b110;
    #10 funct3=3'b111;

    #10 ALUOp=2'b11; funct3=3'b000;
    #10 funct3=3'b001;
    #10 funct3=3'b010;

    #10 ALUOp=2'b11;
    funct3=3'b111;

    #10 $finish;
end

endmodule
