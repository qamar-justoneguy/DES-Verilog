module straight_pbox (input [0:31] DIN, output [0:31] DOUT);

	assign DOUT[0] = DIN[15];
	assign DOUT[1] = DIN[6];
	assign DOUT[2] = DIN[19];
	assign DOUT[3] = DIN[20];
	assign DOUT[4] = DIN[28];
	assign DOUT[5] = DIN[11];
	assign DOUT[6] = DIN[27];
	assign DOUT[7] = DIN[16];
	assign DOUT[8] = DIN[0];
	assign DOUT[9] = DIN[14];
	assign DOUT[10] = DIN[22];
	assign DOUT[11] = DIN[25];
	assign DOUT[12] = DIN[4];
	assign DOUT[13] = DIN[17];
	assign DOUT[14] = DIN[30];
	assign DOUT[15] = DIN[9];
	assign DOUT[16] = DIN[1];
	assign DOUT[17] = DIN[7];
	assign DOUT[18] = DIN[23];
	assign DOUT[19] = DIN[13];
	assign DOUT[20] = DIN[31];
	assign DOUT[21] = DIN[26];
	assign DOUT[22] = DIN[2];
	assign DOUT[23] = DIN[8];
	assign DOUT[24] = DIN[18];
	assign DOUT[25] = DIN[12];
	assign DOUT[26] = DIN[29];
	assign DOUT[27] = DIN[5];
	assign DOUT[28] = DIN[21];
	assign DOUT[29] = DIN[10];
	assign DOUT[30] = DIN[3];
	assign DOUT[31] = DIN[24];
	
endmodule
