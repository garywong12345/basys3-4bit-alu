`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2026 11:10:05 AM
// Design Name: 
// Module Name: full_adder
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


module full_adder (
    input logic a, b, cin,
    output logic sum, cout
);

    par_xor u_sum (.a(a), .b(b), .c(cin), .y(sum)); // sum = odd parity
    maj_min u_carry (.a(a), .b(b), .c(cin), .y(cout)); // cout = majority
    
endmodule

