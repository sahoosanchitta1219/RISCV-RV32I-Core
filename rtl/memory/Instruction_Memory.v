
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2026 03:04:57 PM
// Design Name: 
// Module Name: Instruction_memory
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


module Instruction_memory(
    input [31:0] address,
    output [31:0] data
    );
    reg [31:0] mem[80:0];
    initial
    begin
    //initialize x1 = 0, x2 = 1
  /*  mem[0] = 32'h00000093; 
    mem[1] = 32'h00100113; 
    mem[2] = 32'h00102023; 
    mem[3] = 32'h00202223; 
    mem[4] = 32'h002081B3; 
    mem[5] = 32'h00302423;
    mem[6] = 32'h002000B3;
    mem[7] = 32'h00300133;
    mem[8] = 32'h002081B3;
    mem[9] = 32'h00302623;
    mem[10] = 32'h002000B3;
    mem[11] = 32'h00300133;
    mem[12] = 32'h002081B3;
    mem[13] = 32'h00302823;
    mem[14] = 32'h002000B3;
    mem[15] = 32'h00300133;
    mem[16] = 32'h002081B3;
    mem[17] = 32'h00302A23;
    mem[18] = 32'h002000B3;
    mem[19] = 32'h00300133;
    mem[20] = 32'h002081B3;
    mem[21] = 32'h00302C23;
    mem[22] = 32'h002000B3;
    mem[23] = 32'h00300133;
    mem[24] = 32'h002081B3;
    mem[25] = 32'h00302E23;
    mem[26] = 32'h002000B3;
    mem[27] = 32'h00300133;
    mem[28] = 32'h002081B3;
    mem[29] = 32'h003020A3;
    mem[30] = 32'h002000B3;
    mem[31] = 32'h00300133;
    mem[32] = 32'h002081B3;
    mem[33] = 32'h003022A3;
    mem[34] = 32'h002000B3;
    mem[35] = 32'h00300133;
    mem[36] = 32'h002081B3;
    mem[37] = 32'h003024A3;
    mem[38] = 32'h002000B3;
    mem[39] = 32'h00300133;
    mem[40] = 32'h002081B3;
    mem[41] = 32'h003026A3;
    mem[42] = 32'h002000B3;
    mem[43] = 32'h00300133;
    mem[44] = 32'h002081B3;
    mem[45] = 32'h003028A3;
    mem[46] = 32'h002000B3;
    mem[47] = 32'h00300133;
    mem[48] = 32'h002081B3;
    mem[49] = 32'h00302AA3;
    mem[50] = 32'h002000B3;
    mem[51] = 32'h00300133;
    mem[52] = 32'h002081B3;
    mem[53] = 32'h00302CA3;
    mem[54] = 32'h002000B3;
    mem[55] = 32'h00300133;
    mem[56] = 32'h002081B3;
    mem[57] = 32'h00302EA3;
    mem[58] = 32'h002000B3;
    mem[59] = 32'h00300133;
    mem[60] = 32'h002081B3;
    mem[61] = 32'h00302023;
    mem[62] = 32'h002000B3;
    mem[63] = 32'h00300133;
    mem[64] = 32'h002081B3;
    mem[65] = 32'h00302223;
    mem[66] = 32'h002000B3;
    mem[67] = 32'h00300133;
    mem[68] = 32'h002081B3;
    mem[69] = 32'h00302423;
    mem[70] = 32'h002000B3;
    mem[71] = 32'h00300133;
    mem[72] = 32'h002081B3;
    mem[73] = 32'h00302623;
    mem[74] = 32'h002000B3;
    mem[75] = 32'h00300133;
    mem[76] = 32'h002081B3;
    mem[77] = 32'h00302423;*/
    
/*//Sum of three numbers  
mem[0] = 32'h00a00093; 
mem[1] = 32'h01400113; 
mem[2] = 32'h0x002081b3; 
mem[3] = 32'h0x01418213; 
mem[4] = 32'h0x000202b3;
mem[5] = 32'h0x00502023;*/

//Compare between two numbers
mem[0] = 32'h0x00a00093; 
mem[1] = 32'h0x01400113; 
mem[2] = 32'h0x0020a1b3; 
mem[3] = 32'h0x00322023;

    end
    
    assign data = mem[address[31:2]];
    endmodule
