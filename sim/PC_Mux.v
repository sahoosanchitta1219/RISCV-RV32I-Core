`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 15:50:15
// Design Name: 
// Module Name: PC_Mux_tb
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

module PC_Mux_tb;

    reg  [31:0] PC_Plus_4;
    reg  [31:0] PC_Target;
    reg         PCSrc;
    wire [31:0] PC_Next;

    PC_Mux uut (
        .PC_Plus_4(PC_Plus_4),
        .PC_Target(PC_Target),
        .PCSrc(PCSrc),
        .PC_Next(PC_Next)
    );

    initial begin
        PC_Plus_4 = 32'h00000004; PC_Target = 32'h00001000; PCSrc = 1'b0; #10;
        PC_Plus_4 = 32'h00000004; PC_Target = 32'h00001000; PCSrc = 1'b1; #10;
        
        PC_Plus_4 = 32'h00000008; PC_Target = 32'h00001004; PCSrc = 1'b0; #10;
        PC_Plus_4 = 32'h00000008; PC_Target = 32'h00001004; PCSrc = 1'b1; #10;
        
        PC_Plus_4 = 32'h0000000C; PC_Target = 32'h00002000; PCSrc = 1'b0; #10;
        PC_Plus_4 = 32'h0000000C; PC_Target = 32'h00002000; PCSrc = 1'b1; #20;
    end

endmodule