`timescale 1 ns / 1ps

module des_tb;

reg [0:63] DIN;
reg [0:63] key;
reg clock;

wire shift_out;
wire [0:63] DOUT;
wire [0:63] round_data;
wire [0:47] round_key;
wire [4:0] round_index;

initial
begin
    clock = 1'b0;
    DIN = 64'h123456abcd132536; // Input Data.
    key = 64'haabb09182736ccdd; // Input key.

    #180
    $finish;
end

des d1 (.clock(clock), .DIN(DIN), .key(key), .DOUT(DOUT), .round_data(round_data), 
        .round_key(round_key), .round_index_out(round_index));

always
    #5 clock = ~clock; // Clock with a period of 10 ns.

always @(posedge clock)
begin
    if (round_index <= 16)
        $display("Round: %d  L = %h  R = %h  Round Key = %h",
                round_index, round_data[0:31], round_data[32:63], round_key); 
    else
    $display("Ciphered Data = %h", DOUT); 
end

endmodule