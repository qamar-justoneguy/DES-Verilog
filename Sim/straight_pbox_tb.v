`timescale 1ns / 1ps

module straight_pbox_tb;

reg [0:31] DIN;
wire [0:31] DOUT;
// wire [0:47] Rout;
// wire [0:47] XOR_out;
// wire [0:31] Sout;

straight_pbox sp1 (.DIN(DIN), .DOUT(DOUT));

initial begin
#10
DIN = 32'h8afe657e;
// key = 48'h194cd072de8c;
#10 $display("DOUT = %b", DOUT);
    $display("DIN = %h", DIN);
    // $display("XOR_out = %h", XOR_out);
    // $display("Sout = %b", Sout);
end

endmodule