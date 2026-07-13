`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 12:42:43
// Design Name: 
// Module Name: RISC_V_tb
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

module tb_program_counter;

    reg clk;
    reg reset;
    reg [31:0] i_pc;
    wire [31:0] o_pc;

    program_counter uut (
        .clk(clk),
        .reset(reset),
        .i_pc(i_pc),
        .o_pc(o_pc)
    );

    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 0;
        reset = 1;
        i_pc = 32'h0000_0000;

        #15;
        reset = 0;
        
        #10;
        i_pc = 32'h0000_0004;
        
        #10;
        i_pc = 32'h0040_001A;
        
        #10;
        i_pc = 32'hFFFF_FFFF;
        #5;
        reset = 1;
        
        #10;
        reset = 0;
        i_pc = 32'h0000_1000;
        
        #20;
        $finish;
    end

endmodule