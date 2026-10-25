`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2026 11:24:55 AM
// Design Name: 
// Module Name: top_file
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


module top_file (
    input  logic        clk,
    input  logic [11:0] sw,
    output logic [2:0]  led,
    output logic [6:0]  seg,
    output logic [3:0]  an
);

    logic [3:0] result;
    logic       cout;

    alu4 u_alu (
        .a(sw[7:4]),
        .b(sw[3:0]),
        .op(sw[10:8]),
        .cin(sw[11]),
        .result(result),
        .cout(cout),
        .zero(led[2]),
        .negative(led[1]),
        .overflow(led[0])
    );

    display_mux u_disp (
        .clk(clk),
        .value({8'h00, 3'b000, cout, result}), 
        .seg(seg),
        .an(an)
    );

endmodule
