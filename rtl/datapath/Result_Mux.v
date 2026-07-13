`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 15:23:33
// Design Name: 
// Module Name: Result_Mux
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


module Result_Mux(
    input [31:0]ALUResult,
    input [31:0]ReadData,
    input [31:0]PC_Plus_4,
    input [1:0]ResultSrc,
    output [31:0]Result
    );	
	assign Result = ResultSrc[1]?(PC_Plus_4):(ResultSrc[0]?ReadData:ALUResult) ;
endmodule
