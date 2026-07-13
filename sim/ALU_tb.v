`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 12:36:40
// Design Name: 
// Module Name: ALU_tb
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

module ALU_tb;
    reg [31:0] A, B;
    reg [3:0]  con;
    wire [31:0] res;
    wire zero;
    
    ALU uut (
        .A(A), 
        .B(B), 
        .con(con), 
        .res(res), 
        .zero(zero)); 
        
    initial begin
        A = 0; B = 0; con = 0; #10;
        A = 32'h5; B = 32'h3; con = 4'b0000; #10;
       
        A = 32'h7FFFFFFF; B = 32'h1; con = 4'b0000; #10;
        
        A = 32'hFFFFFFFF; B = 32'h1; con = 4'b0000; #10;
        

        A = 32'hA; B = 32'h4; con = 4'b0001; #10;
        
        A = 32'h4; B = 32'hA; con = 4'b0001; #10;
        

        A = 32'h80000000; B = 32'h1; con = 4'b0001; #10;
        
     
        

        A = 32'hAAAA5555; B = 32'hAAAA5555; con = 4'b0100; #10;
        

        A = 32'hFFFFFFFF; B = 32'h1; con = 4'b0101; #10;
        

        A = 32'hFFFFFFFF; B = 32'h1; con = 4'b0110; #10;
      
        A = 32'h12345678; B = 32'h0; con = 4'b0111; #10;
       
        A = 32'hF; B = 32'h4; con = 4'b1010; #10;
        
        

        
    end
endmodule