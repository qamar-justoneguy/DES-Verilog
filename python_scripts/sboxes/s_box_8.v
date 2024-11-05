module s_box_8 (input [5:0] index, output reg [3:0] sub_val);

(* rom_style = "block" *)
wire [1:0] row;
wire [3:0] column;
assign row[1:0] = {index[5], index[0]};
assign column[3:0] = index[4:1];

always @*
	case ({row, column})
		6'b000000: sub_val = 4'd13;
		6'b000001: sub_val = 4'd2;
		6'b000010: sub_val = 4'd8;
		6'b000011: sub_val = 4'd4;
		6'b000100: sub_val = 4'd6;
		6'b000101: sub_val = 4'd15;
		6'b000110: sub_val = 4'd11;
		6'b000111: sub_val = 4'd1;
		6'b001000: sub_val = 4'd10;
		6'b001001: sub_val = 4'd9;
		6'b001010: sub_val = 4'd3;
		6'b001011: sub_val = 4'd14;
		6'b001100: sub_val = 4'd5;
		6'b001101: sub_val = 4'd0;
		6'b001110: sub_val = 4'd12;
		6'b001111: sub_val = 4'd7;
		6'b010000: sub_val = 4'd1;
		6'b010001: sub_val = 4'd15;
		6'b010010: sub_val = 4'd13;
		6'b010011: sub_val = 4'd8;
		6'b010100: sub_val = 4'd10;
		6'b010101: sub_val = 4'd3;
		6'b010110: sub_val = 4'd7;
		6'b010111: sub_val = 4'd4;
		6'b011000: sub_val = 4'd12;
		6'b011001: sub_val = 4'd5;
		6'b011010: sub_val = 4'd6;
		6'b011011: sub_val = 4'd11;
		6'b011100: sub_val = 4'd0;
		6'b011101: sub_val = 4'd14;
		6'b011110: sub_val = 4'd9;
		6'b011111: sub_val = 4'd2;
		6'b100000: sub_val = 4'd7;
		6'b100001: sub_val = 4'd11;
		6'b100010: sub_val = 4'd4;
		6'b100011: sub_val = 4'd1;
		6'b100100: sub_val = 4'd9;
		6'b100101: sub_val = 4'd12;
		6'b100110: sub_val = 4'd14;
		6'b100111: sub_val = 4'd2;
		6'b101000: sub_val = 4'd0;
		6'b101001: sub_val = 4'd6;
		6'b101010: sub_val = 4'd10;
		6'b101011: sub_val = 4'd13;
		6'b101100: sub_val = 4'd15;
		6'b101101: sub_val = 4'd3;
		6'b101110: sub_val = 4'd5;
		6'b101111: sub_val = 4'd8;
		6'b110000: sub_val = 4'd2;
		6'b110001: sub_val = 4'd1;
		6'b110010: sub_val = 4'd14;
		6'b110011: sub_val = 4'd7;
		6'b110100: sub_val = 4'd4;
		6'b110101: sub_val = 4'd10;
		6'b110110: sub_val = 4'd8;
		6'b110111: sub_val = 4'd13;
		6'b111000: sub_val = 4'd15;
		6'b111001: sub_val = 4'd12;
		6'b111010: sub_val = 4'd9;
		6'b111011: sub_val = 4'd0;
		6'b111100: sub_val = 4'd3;
		6'b111101: sub_val = 4'd5;
		6'b111110: sub_val = 4'd6;
		6'b111111: sub_val = 4'd11;

		default: sub_val = 4'd0;
	endcase
endmodule
