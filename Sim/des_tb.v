`timescale 1 ns / 1ps

module des_tb;

reg [0:63] DIN;
reg [0:63] key;
reg clock;

wire shift_out;
wire [0:63] DOUT;
wire [0:63] round_in;
wire [0:55] next_key;
wire [0:47] round_key;
wire [0:55] curr_key;
wire [4:0] round_index_out;

initial
begin
    clock = 1'b0;
    DIN = 64'h123456abcd132536;
    key = 64'haabb09182736ccdd;

    #200
    $finish;
end

des d1 (.clock(clock), .DIN(DIN), .key(key), .DOUT(DOUT), .round_in(round_in), .next_key(next_key), .round_key(round_key), .curr_key(curr_key), .shift_out(shift_out), .round_index_out(round_index_out));

always
    #5 clock = ~clock; // Clock with a period of 10 ns.

always @(posedge clock)
begin
    $display("clock = %h", clock); 
    $display("shift_out = %h", shift_out); 
    $display("DOUT = %h", DOUT); 
    $display("round_in = %h", round_in); 
    $display("round_index_out = %h", round_index_out); 
    $display("curr_key = %h", curr_key); 
    $display("round_key = %h", round_key); 
    $display("Next key = %h\n", next_key); 
end

endmodule