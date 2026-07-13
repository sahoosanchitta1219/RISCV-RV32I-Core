`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 14:43:36
// Design Name: 
// Module Name: Interface_tb
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


`timescale 1ns / 1ps

module Interface_tb;
reg        clk;
reg        reset;
reg [31:0] PCNext;
wire[31:0] PC;

Interface uut (
       .clk(clk),
       .reset(reset),
       .PCNext(PCNext),
       .PC(PC)
    );

    initial clk = 1'b0;
    always #5 clk = ~clk;

    initial begin
        reset  = 1'b1;
        PCNext = 32'h00000000;
        #3;

        reset  = 1'b0;
        #12;

        reset  = 1'b1;
        #5;

        PCNext = 32'h00000004; #10;
        PCNext = 32'h00000008; #10;
        PCNext = 32'h0000000C; #10;
        PCNext = 32'h00000010; #10;
        PCNext = 32'h00000014; #10;
        PCNext = 32'h00000018; #10;
        PCNext = 32'h0000001C; #10;
        PCNext = 32'h00000020; #10;
        PCNext = 32'h00000024; #10;
        PCNext = 32'h00000028; #10;
        PCNext = 32'h0000002C; #10;
        PCNext = 32'h00000030; #10;
        PCNext = 32'h00000034; #10;
        PCNext = 32'h00000038; #10;
        PCNext = 32'h0000003C; #10;
        PCNext = 32'h00000040; #10;
        PCNext = 32'h00000044; #10;
        PCNext = 32'h00000048; #10;
        PCNext = 32'h0000004C; #10;
        PCNext = 32'h00000050; #10;
        PCNext = 32'h00000054; #10;
        PCNext = 32'h00000058; #10;
        PCNext = 32'h0000005C; #10;
        PCNext = 32'h00000060; #10;
        PCNext = 32'h00000064; #10;
        PCNext = 32'h00000068; #10;
        PCNext = 32'h0000006C; #10;
        PCNext = 32'h00000070; #10;
        PCNext = 32'h00000074; #10;
        PCNext = 32'h00000078; #10;
        PCNext = 32'h0000007C; #10;
        PCNext = 32'h00000080; #10;
        PCNext = 32'h00000084; #10;
        PCNext = 32'h00000088; #10;
        PCNext = 32'h0000008C; #10;
        PCNext = 32'h00000090; #10;
        PCNext = 32'h00000094; #10;
        PCNext = 32'h00000098; #10;
        PCNext = 32'h0000009C; #10;
        PCNext = 32'h000000A0; #10;

        #4;
        reset  = 1'b0;
        #8;
        reset  = 1'b1;
        #8;

        PCNext = 32'hFFFFFFFF; #10;
        PCNext = 32'h5A5A5A5A; #10;
        PCNext = 32'hA5A5A5A5; #10;
        PCNext = 32'h00000000; #20;
    end

endmodule