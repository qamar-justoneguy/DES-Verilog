`timescale 1ns / 1ps

module initial_permutation_tb();

reg [63:0] PLAINTEXT;
wire [63:0] PERMTEXT;

initial_permutation ip1 (.DIN(PLAINTEXT), .DOUT(PERMTEXT));

initial begin

#100 PLAINTEXT = 64'h123456ABCD132536;
#100

$display("Plaintext %h", PLAINTEXT);
$display("Permutated Text %h", PERMTEXT); 

end

endmodule
