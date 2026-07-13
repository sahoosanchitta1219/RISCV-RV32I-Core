`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 14:53:23
// Design Name: 
// Module Name: Data_mem_tb
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

module Data_mem_tb;
    reg [31:0] A;
    reg [31:0] WD;
    reg WE;
    reg clk;
    wire [31:0] RD;
    Data_mem uut (
        .A(A), 
        .WD(WD), 
        .WE(WE), 
        .clk(clk), 
        .RD(RD)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        A = 0;
        WD = 0;
        WE = 0;
        #10;
        A = 32'h0000_0000;
        WD = 32'hAAAA_AAAA;
        WE = 1;
        #10;
        A = 32'h0000_0004;
        WD = 32'hBBBB_BBBB;
        WE = 1;
        #10;
        A = 32'h0000_0008;
        WD = 32'hCCCC_CCCC;
        WE = 1;
        #10;
        A = 32'h0000_000C;
        WD = 32'hDDDD_DDDD;
        WE = 1;
        #10;
        A = 32'h0000_0010;
        WD = 32'hEEEE_EEEE;
        WE = 1;
        #10;
        WE = 0;
        A = 32'h0000_0000;
        #10;
        A = 32'h0000_0004;
        #10;
        A = 32'h0000_0008;
        #10;
        A = 32'h0000_000C;
        #10;
        A = 32'h0000_0010;
        #10;
        $finish;
    end   
endmodule
