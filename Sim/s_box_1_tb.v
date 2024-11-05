`timescale 1ps / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Muhammad Qamar Raza
// 
// Create Date: 10/29/2024 11:24:15 AM
// Design Name: 
// Module Name: s_box_1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module s_box_1_tb;

reg [0:5] index;
wire [0:3] sub_value;
wire [1:0] row;
wire [3:0] column;
reg clock = 1'b0;

s_box_1 sb1 (.index(index), .sub_val(sub_value), .row(row), .column(column));

always
    #5 clock = ~clock;
     
initial begin
    index <= 6'b000000;
    #640 $finish;
end

always @(posedge clock)
begin
    $display("index %d, sub_value %d", index, sub_value); 
    index = index + 1;
end

endmodule
