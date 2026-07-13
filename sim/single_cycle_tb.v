`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 16:30:09
// Design Name: 
// Module Name: single_cycle_tb
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


module single_cycle_tb();
reg clk;
reg reset;
wire [31:0] WriteData;
wire [31:0] ALU_OUTPUT;
wire MemWrite;

single_cycle_top sct (
                        .clk(clk),
                        .reset(reset),
                        .WriteData(WriteData),
                        .ALU_OUTPUT(ALU_OUTPUT),
                        .MemWrite(MemWrite));
 always #5 clk = ~clk;
 initial begin
 clk=0;
 reset=1;
 #20;
 reset=0;
 #100;
 $finish;
 end
 
endmodule