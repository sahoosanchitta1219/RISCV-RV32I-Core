`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 14:26:52
// Design Name: 
// Module Name: REG_MEM_BLOCK
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


module REG_MEM_BLOCK(
    input clk,
    input we3,
    input [4:0] ra1,
    input [4:0] ra2,
    input [4:0] ra3,
    input [31:0] wd3,
    output  [31:0] rd1,
    output  [31:0] rd2
);

reg [31:0] mem [31:0];

always @(posedge clk)
begin
    if (we3)
        mem[ra3] <= wd3;
end
assign rd1 = (ra1!=0)?mem[ra1]:0;
assign rd2 = (ra2!=0)?mem[ra2]:0;
endmodule
