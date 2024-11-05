`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Muhammad Qamar Raza
// 
// Create Date: 10/24/2024 10:14:53 AM
// Design Name: 
// Module Name: initial_permutation
 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module initial_permutation(input [0:63] DIN, output [0:63] DOUT);
    // 8-bit blocks.
    // Block-1
    assign DOUT[0] = DIN[57];
    assign DOUT[1] = DIN[49];
    assign DOUT[2] = DIN[41];
    assign DOUT[3] = DIN[33];
    assign DOUT[4] = DIN[25];
    assign DOUT[5] = DIN[17];
    assign DOUT[6] = DIN[9];
    assign DOUT[7] = DIN[1];
    
    assign DOUT[8] = DIN[59];
    assign DOUT[9] = DIN[51];
    assign DOUT[10] = DIN[43];
    assign DOUT[11] = DIN[35];
    assign DOUT[12] = DIN[27];
    assign DOUT[13] = DIN[19];
    assign DOUT[14] = DIN[11];
    assign DOUT[15] = DIN[3];
    
    assign DOUT[16] = DIN[61];
    assign DOUT[17] = DIN[53];
    assign DOUT[18] = DIN[45];
    assign DOUT[19] = DIN[37];
    assign DOUT[20] = DIN[29];
    assign DOUT[21] = DIN[21];
    assign DOUT[22] = DIN[13];
    assign DOUT[23] = DIN[5];
    
    assign DOUT[24] = DIN[63];
    assign DOUT[25] = DIN[55];
    assign DOUT[26] = DIN[47];
    assign DOUT[27] = DIN[39];
    assign DOUT[28] = DIN[31];
    assign DOUT[29] = DIN[23];
    assign DOUT[30] = DIN[15];
    assign DOUT[31] = DIN[7];
    
    assign DOUT[32] = DIN[56];
    assign DOUT[33] = DIN[48];
    assign DOUT[34] = DIN[40];
    assign DOUT[35] = DIN[32];
    assign DOUT[36] = DIN[24];
    assign DOUT[37] = DIN[16];
    assign DOUT[38] = DIN[8];
    assign DOUT[39] = DIN[0];
    
    assign DOUT[40] = DIN[58];
    assign DOUT[41] = DIN[50];
    assign DOUT[42] = DIN[42];
    assign DOUT[43] = DIN[34];
    assign DOUT[44] = DIN[26];
    assign DOUT[45] = DIN[18];
    assign DOUT[46] = DIN[10];
    assign DOUT[47] = DIN[2];
    
    assign DOUT[48] = DIN[60];
    assign DOUT[49] = DIN[52];
    assign DOUT[50] = DIN[44];
    assign DOUT[51] = DIN[36];
    assign DOUT[52] = DIN[28];
    assign DOUT[53] = DIN[20];
    assign DOUT[54] = DIN[12];
    assign DOUT[55] = DIN[4];
    
    assign DOUT[56] = DIN[62];
    assign DOUT[57] = DIN[54];
    assign DOUT[58] = DIN[46];
    assign DOUT[59] = DIN[38];
    assign DOUT[60] = DIN[30];
    assign DOUT[61] = DIN[22];
    assign DOUT[62] = DIN[14];
    assign DOUT[63] = DIN[6];    
 
endmodule
