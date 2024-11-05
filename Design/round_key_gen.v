module round_key_gen (input [0:55] DIN, input shift, output [0:55] next_key, output [0:47] round_key);

    wire [0:27] L;
    wire [0:27] R;
    
    // Circular left-shifting.
    assign L = (shift) ? {DIN[1:27], DIN[0]} : {DIN[2:27], DIN[0:1]};
    assign R = (shift) ? {DIN[29:55], DIN[28]} : {DIN[30:55], DIN[28:29]};
    assign next_key = {L, R};

    compression_pbox cp1 (.DIN({L, R}), .round_key(round_key));

endmodule