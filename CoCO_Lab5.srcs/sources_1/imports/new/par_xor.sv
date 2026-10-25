`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2026 11:02:08 AM
// Design Name: 
// Module Name: par_xor
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


module par_xor(

    input logic a, b, c,
    output logic y
    
    );
    
logic x_ab;
    
xor2 xorab ( .a(a), .b(b), .y(x_ab) );
xor2 xorabc ( .a(x_ab), .b(c), .y(y) );
    
endmodule
