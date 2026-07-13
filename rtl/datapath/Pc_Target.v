`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 15:14:09
// Design Name: 
// Module Name: Pc_Target
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


module Pc_Target(
    input  [31:0] Pc,
    input  [31:0] ImmExt,
    output  [31:0] PcTarget
    );
    assign PcTarget = Pc + ImmExt;
endmodule
