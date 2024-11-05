`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 12:06:09 PM
// Design Name: 
// Module Name: expansion_pbox
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


module expansion_pbox(input [0:31] Rin, output [0:47] Rout);

    assign Rout[0] = Rin[31];
    assign Rout[1] = Rin[0];
    assign Rout[2] = Rin[1];
    assign Rout[3] = Rin[2];
    assign Rout[4] = Rin[3];
    assign Rout[5] = Rin[4];
    assign Rout[6] = Rin[3];
    assign Rout[7] = Rin[4];
    assign Rout[8] = Rin[5];
    assign Rout[9] = Rin[6];
    assign Rout[10] = Rin[7];
    assign Rout[11] = Rin[8];
    assign Rout[12] = Rin[7];
    assign Rout[13] = Rin[8];
    assign Rout[14] = Rin[9];
    assign Rout[15] = Rin[10];
    assign Rout[16] = Rin[11];
    assign Rout[17] = Rin[12];
    assign Rout[18] = Rin[11];
    assign Rout[19] = Rin[12];
    assign Rout[20] = Rin[13];
    assign Rout[21] = Rin[14];
    assign Rout[22] = Rin[15];
    assign Rout[23] = Rin[16];
    assign Rout[24] = Rin[15];
    assign Rout[25] = Rin[16];
    assign Rout[26] = Rin[17];
    assign Rout[27] = Rin[18];
    assign Rout[28] = Rin[19];
    assign Rout[29] = Rin[20];
    assign Rout[30] = Rin[19];
    assign Rout[31] = Rin[20];
    assign Rout[32] = Rin[21];
    assign Rout[33] = Rin[22];
    assign Rout[34] = Rin[23];
    assign Rout[35] = Rin[24];
    assign Rout[36] = Rin[23];
    assign Rout[37] = Rin[24];
    assign Rout[38] = Rin[25];
    assign Rout[39] = Rin[26];
    assign Rout[40] = Rin[27];
    assign Rout[41] = Rin[28];
    assign Rout[42] = Rin[27];
    assign Rout[43] = Rin[28];
    assign Rout[44] = Rin[29];
    assign Rout[45] = Rin[30];
    assign Rout[46] = Rin[31];
    assign Rout[47] = Rin[0];

endmodule
