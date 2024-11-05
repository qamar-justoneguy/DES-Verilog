module compression_pbox (input [0:55] DIN, output [0:47] round_key);

	assign round_key[0] = DIN[13];
	assign round_key[1] = DIN[16];
	assign round_key[2] = DIN[10];
	assign round_key[3] = DIN[23];
	assign round_key[4] = DIN[0];
	assign round_key[5] = DIN[4];
	assign round_key[6] = DIN[2];
	assign round_key[7] = DIN[27];
	assign round_key[8] = DIN[14];
	assign round_key[9] = DIN[5];
	assign round_key[10] = DIN[20];
	assign round_key[11] = DIN[9];
	assign round_key[12] = DIN[22];
	assign round_key[13] = DIN[18];
	assign round_key[14] = DIN[11];
	assign round_key[15] = DIN[3];
	assign round_key[16] = DIN[25];
	assign round_key[17] = DIN[7];
	assign round_key[18] = DIN[15];
	assign round_key[19] = DIN[6];
	assign round_key[20] = DIN[26];
	assign round_key[21] = DIN[19];
	assign round_key[22] = DIN[12];
	assign round_key[23] = DIN[1];
	assign round_key[24] = DIN[40];
	assign round_key[25] = DIN[51];
	assign round_key[26] = DIN[30];
	assign round_key[27] = DIN[36];
	assign round_key[28] = DIN[46];
	assign round_key[29] = DIN[54];
	assign round_key[30] = DIN[29];
	assign round_key[31] = DIN[39];
	assign round_key[32] = DIN[50];
	assign round_key[33] = DIN[44];
	assign round_key[34] = DIN[32];
	assign round_key[35] = DIN[47];
	assign round_key[36] = DIN[43];
	assign round_key[37] = DIN[48];
	assign round_key[38] = DIN[38];
	assign round_key[39] = DIN[55];
	assign round_key[40] = DIN[33];
	assign round_key[41] = DIN[52];
	assign round_key[42] = DIN[45];
	assign round_key[43] = DIN[41];
	assign round_key[44] = DIN[49];
	assign round_key[45] = DIN[35];
	assign round_key[46] = DIN[28];
	assign round_key[47] = DIN[31];

endmodule
