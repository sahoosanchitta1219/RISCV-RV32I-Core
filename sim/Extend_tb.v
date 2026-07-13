`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 10:14:03
// Design Name: 
// Module Name: Extend_tb
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


module Extend_tb;

reg [31:0] Instr;
reg [1:0] ImmSrc;
wire [31:0] ImmExt;

Extend uut(
    .Instr(Instr),
    .ImmSrc(ImmSrc),
    .ImmExt(ImmExt)
);

initial begin
    Instr=32'h00A00093; ImmSrc=2'b00;
    #10 Instr=32'hFFF00093; ImmSrc=2'b00;
    #10 Instr=32'h7FF00093; ImmSrc=2'b00;
    #10 Instr=32'h0020A023; ImmSrc=2'b01;
    #10 Instr=32'hFE20AC23; ImmSrc=2'b01;
    #10 Instr=32'h00B12423; ImmSrc=2'b01;
    #10 Instr=32'hFE208EE3; ImmSrc=2'b10;
    #10 Instr=32'h00208463; ImmSrc=2'b10;
    #10 Instr=32'hFC000CE3; ImmSrc=2'b10;
    #10 Instr=32'h004000EF; ImmSrc=2'b11;
    #10 Instr=32'h800000EF; ImmSrc=2'b11;
    #10 Instr=32'h7FFFF0EF; ImmSrc=2'b11;
    #10 Instr=32'h12345678; ImmSrc=2'b00;
    #10 Instr=32'h87654321; ImmSrc=2'b01;
    #10 Instr=32'hAAAAAAAA; ImmSrc=2'b10;
    #10 Instr=32'h55555555; ImmSrc=2'b11;

    #10 $finish;
end

endmodule
