`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 16:14:40
// Design Name: 
// Module Name: ALU_Mux_tb
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

module ALU_Mux_tb;

    reg  [31:0] WD;
    reg  [31:0] ImmExt;
    reg         ALUSrc;
    wire [31:0] B;

    ALU_Mux uut (
        .WD(WD),
        .ImmExt(ImmExt),
        .ALUSrc(ALUSrc),
        .B(B)
    );

    initial begin
        WD = 32'hAAAA_AAAA; ImmExt = 32'hBBBB_BBBB; ALUSrc = 1'b0; #10;
        WD = 32'hAAAA_AAAA; ImmExt = 32'hBBBB_BBBB; ALUSrc = 1'b1; #10;
        
        WD = 32'h1234_5678; ImmExt = 32'h9ABC_DEF0; ALUSrc = 1'b0; #10;
        WD = 32'h1234_5678; ImmExt = 32'h9ABC_DEF0; ALUSrc = 1'b1; #10;
        
        WD = 32'h0000_0000; ImmExt = 32'hFFFF_FFFF; ALUSrc = 1'b0; #10;
        WD = 32'h0000_0000; ImmExt = 32'hFFFF_FFFF; ALUSrc = 1'b1; #20;
    end

endmodule