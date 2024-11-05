module des_function (input [0:31] DIN, input [0:47] key, output [0:31] DOUT);

    wire [0:47] Rout;
    wire [0:47] XOR_out;
    wire [0:31] Sout;

    expansion_pbox ep1 (.Rin(DIN), .Rout(Rout));
    
    assign XOR_out[0:47] = Rout ^ key;
    
    s_box_1 sb1 (.index(XOR_out[0:5]), .sub_val(Sout[0:3]));
    s_box_2 sb2 (.index(XOR_out[6:11]), .sub_val(Sout[4:7]));
    s_box_3 sb3 (.index(XOR_out[12:17]), .sub_val(Sout[8:11]));
    s_box_4 sb4 (.index(XOR_out[18:23]), .sub_val(Sout[12:15]));
    s_box_5 sb5 (.index(XOR_out[24:29]), .sub_val(Sout[16:19]));
    s_box_6 sb6 (.index(XOR_out[30:35]), .sub_val(Sout[20:23]));
    s_box_7 sb7 (.index(XOR_out[36:41]), .sub_val(Sout[24:27]));
    s_box_8 sb8 (.index(XOR_out[42:47]), .sub_val(Sout[28:31]));

    straight_pbox sp1 (.DIN(Sout), .DOUT(DOUT));

endmodule