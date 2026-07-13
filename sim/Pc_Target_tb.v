`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 15:34:52
// Design Name: 
// Module Name: Pc_Target_tb
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

module Pc_Target_tb;

    reg  [31:0] Pc;
    reg  [31:0] ImmExt;
    wire [31:0] PcTarget;

    Pc_Target uut (
        .Pc(Pc),
        .ImmExt(ImmExt),
        .PcTarget(PcTarget)
    );

    initial begin
        Pc = 32'h00000000; ImmExt = 32'h00000004; #10;
        Pc = 32'h00000004; ImmExt = 32'h00000008; #10;
        Pc = 32'h00000008; ImmExt = 32'h0000000C; #10;
        Pc = 32'h0000000C; ImmExt = 32'h00000010; #10;
        Pc = 32'h00000010; ImmExt = 32'h00000014; #10;
        Pc = 32'h00000014; ImmExt = 32'h00000018; #10;
        Pc = 32'h00000018; ImmExt = 32'h0000001C; #10;
        Pc = 32'h0000001C; ImmExt = 32'h00000020; #10;
        Pc = 32'h00000020; ImmExt = 32'h00000024; #10;
        Pc = 32'h00000024; ImmExt = 32'h00000028; #10;
        Pc = 32'h00000028; ImmExt = 32'h0000002C; #10;
        Pc = 32'h0000002C; ImmExt = 32'h00000030; #10;
        Pc = 32'h00000030; ImmExt = 32'h00000034; #10;
        Pc = 32'h00000034; ImmExt = 32'h00000038; #10;
        Pc = 32'h00000038; ImmExt = 32'h0000003C; #10;
        Pc = 32'h0000003C; ImmExt = 32'h00000040; #10;
        Pc = 32'h00000040; ImmExt = 32'h00000044; #10;
        Pc = 32'h00000044; ImmExt = 32'h00000048; #10;
        Pc = 32'h00000048; ImmExt = 32'h0000004C; #10;
        Pc = 32'h0000004C; ImmExt = 32'h00000050; #10;
        Pc = 32'h00000050; ImmExt = 32'h00000054; #10;
        Pc = 32'h00000054; ImmExt = 32'h00000058; #10;
        Pc = 32'h00000058; ImmExt = 32'h0000005C; #10;
        Pc = 32'h0000005C; ImmExt = 32'h00000060; #10;
        Pc = 32'h00000060; ImmExt = 32'h00000064; #10;
        Pc = 32'h00000064; ImmExt = 32'h00000068; #10;
        Pc = 32'h00000068; ImmExt = 32'h0000006C; #10;
        Pc = 32'h0000006C; ImmExt = 32'h00000070; #10;
        Pc = 32'h00000070; ImmExt = 32'h00000074; #10;
        Pc = 32'h00000074; ImmExt = 32'h00000078; #10;
        Pc = 32'h00000078; ImmExt = 32'h0000007C; #10;
        Pc = 32'h0000007C; ImmExt = 32'h00000080; #10;
        Pc = 32'h00000080; ImmExt = 32'h00000084; #10;
        Pc = 32'h00000084; ImmExt = 32'h00000088; #10;
        Pc = 32'h00000088; ImmExt = 32'h0000008C; #10;
        Pc = 32'h0000008C; ImmExt = 32'h00000090; #10;
        Pc = 32'h00000090; ImmExt = 32'h00000094; #10;
        Pc = 32'h00000094; ImmExt = 32'h00000098; #10;
        Pc = 32'h00000098; ImmExt = 32'h0000009C; #10;
        Pc = 32'h0000009C; ImmExt = 32'h000000A0; #20;
    end

endmodule