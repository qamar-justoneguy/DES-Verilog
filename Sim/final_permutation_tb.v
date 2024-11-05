`timescale 1ns / 1ps

module final_permutation_tb();

reg [63:0] PLAINTEXT;
wire [63:0] PERMTEXT;

final_permutation fp1 (.DIN(PLAINTEXT), .DOUT(PERMTEXT));

initial begin

#100 PLAINTEXT = 64'h19ba9212cf26b472;
#100

$display("Plaintext %h", PLAINTEXT);
$display("Permutated Text %h", PERMTEXT); 

end

endmodule