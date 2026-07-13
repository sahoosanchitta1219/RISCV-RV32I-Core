`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 10:33:31
// Design Name: 
// Module Name: PC
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


module PC (
    input  clk, reset,                  
    input  [31:0] i_pc,       
    output reg [31:0] o_pc         
);
    always @(posedge clk) begin
        if (reset) begin
            o_pc <= 32'b0;         
        end else begin
            o_pc <= i_pc;             
        end
    end

endmodule
