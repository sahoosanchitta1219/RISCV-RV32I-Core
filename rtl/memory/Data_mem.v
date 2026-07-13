`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 14:30:33
// Design Name: 
// Module Name: Data_mem
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

module Data_mem (
    input   [31:0] A,      
    input   [31:0] WD,
    input         WE,     
    input        clk,    
    output [31:0] RD      
);

    
    reg [31:0] mem [63:0];
    assign RD=mem[A[31:2]];
    
    always @(posedge clk) begin
        if (WE)
        begin 
            mem[A[31:2]] <= WD;  
            end
    end

endmodule
