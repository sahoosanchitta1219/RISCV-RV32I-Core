`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 15:00:53
// Design Name: 
// Module Name: Pc_Plus_4
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


module Pc_Plus_4 (                  
    input  [31:0] Pc,       
    output [31:0] PCPlus4       
);
assign PCPlus4 = Pc + 32'd4;
endmodule
