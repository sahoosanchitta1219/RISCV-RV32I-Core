`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 15:42:29
// Design Name: 
// Module Name: PC_Mux
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


module PC_Mux (
	input [31:0]PC_Plus_4,
	input [31:0]PC_Target,
	input PCSrc,
	output [31:0]PC_Next);
	
	assign PC_Next = PCSrc ? PC_Target : PC_Plus_4; 
	
endmodule
