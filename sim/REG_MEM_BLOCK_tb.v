`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 14:57:11
// Design Name: 
// Module Name: REG_MEM_BLOCK_tb
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


module REG_MEM_BLOCK_tb;

    reg [4:0] ra1;
    reg [4:0] ra2;
    reg [4:0] ra3;
    reg [31:0] wd3;
    reg we3;
    reg clk;
    wire [31:0] rd1;
    wire [31:0] rd2;

    REG_MEM_BLOCK uut (
        .ra1(ra1),
        .ra2(ra2),
        .ra3(ra3),
        .wd3(wd3),
        .we3(we3),
        .clk(clk),
        .rd1(rd1),
        .rd2(rd2)
    );

    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 0;
        we3 = 0;
        ra1 = 0;
        ra2 = 0;
        ra3 = 0;
        wd3 = 0;
        #10;

        ra3 = 5'd0;
        wd3 = 32'hAAAAAAAA;
        we3 = 1;
        #10;

        ra3 = 5'd31;
        wd3 = 32'h55555555;
        we3 = 1;
        #10;

        ra3 = 5'd1;
        wd3 = 32'h11111111;
        we3 = 1;
        #10;

        ra3 = 5'd2;
        wd3 = 32'h22222222;
        we3 = 1;
        #10;

        ra3 = 5'd15;
        wd3 = 32'hF0F0F0F0;
        we3 = 1;
        #10;

        ra3 = 5'd16;
        wd3 = 32'h0F0F0F0F;
        we3 = 1;
        #10;
       
        we3 = 0;
        ra1 = 5'd0;
        ra2 = 5'd31;
        #10;

        ra1 = 5'd1;
        ra2 = 5'd2;
        #10;

        ra1 = 5'd15;
        ra2 = 5'd16;
        #10;


        $finish;
    end

endmodule
