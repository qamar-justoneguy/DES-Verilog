module des_round (input [0:63] DIN, input [0:47] key, input [4:0] round, output [0:63] DOUT);

    wire [0:31] L0;
    wire [0:31] R0;
    wire [0:31] Fout;
    wire [0:31] RI;

    
    assign L0 = DIN[0:31];
    assign R0 = DIN[32:63];

    des_function df1 (.DIN(R0), .key(key), .DOUT(Fout));
    assign RI = Fout ^ L0;

    // Don't L and R in the last round.
    assign DOUT = (round < 16) ? {R0, RI} : {RI, R0};

endmodule