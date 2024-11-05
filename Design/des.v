module des (input clock, input [0:63] DIN, input [0:63] key, output [0:63] DOUT,
            output [0:63] round_data, output [0:47] round_key, output [4:0] round_index_out);

wire [0:63] perm_DIN; // Input data after initial permutation.
wire [0:63] round_data; // Output of DES function after swapping.
wire [0:55] pd_key; // 56-bit Parity-dropped key.
wire [0:55] next_key; // 56-bit key used by key generator.
wire [0:47] round_key; // 48-bit round key.

reg shift; // 1: 1-bit shift, 0: 2-bit shift.
reg [4:0] round_index; // Round number
reg [0:63] key_reg; // Used as buffer, so that key doesn't get corrupted.
reg [0:55] curr_key_reg;
reg [0:63] round_data_reg;
reg [0:63] DOUT_reg; // Output ciphered data. Gets output after the 16th clock cycle.

parity_drop pd1 (.DIN(key), .DOUT(pd_key));
initial_permutation ip1 (.DIN(DIN), .DOUT(perm_DIN));
round_key_gen rkg1 (.DIN(curr_key_reg), .shift(shift), .next_key(next_key), .round_key(round_key));
des_round dr1 (.DIN(round_data_reg), .key(round_key), .round(round_index), .DOUT(round_data));
final_permutation fp1 (.DIN(DOUT_reg), .DOUT(DOUT));

assign round_index_out = round_index; // To be removed.
assign round_in = round_data_reg;

initial
begin
    round_index = 5'd0;    
    curr_key_reg <= 56'd0; // 56-bit key for first round.
    shift <= 1'b1; // First round will have 1-bit left shift.
    DOUT_reg <= 64'd0;
end

always @(posedge clock)
begin
    if (round_index == 0)
    begin
        round_data_reg <= perm_DIN; // Input DES data for first round. 
        curr_key_reg <= pd_key; // 56-bit key for first round.
        round_index <= round_index + 1;
    end
    else
    begin
        round_data_reg <= round_data;
        curr_key_reg <= next_key;
        round_index <= round_index + 1;

        if (round_index == 1 || round_index == 8 || round_index == 15)
            shift <= 1'b1;
        else
            shift <= 1'b0;

        if (round_index == 16) // Output ciphered data in the clock cycle after the 16th clock cycle.
            DOUT_reg <= round_data;
    end
end

endmodule