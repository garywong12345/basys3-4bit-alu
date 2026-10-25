`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2026 10:33:12 AM
// Design Name: 
// Module Name: maj_min
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


module maj_min (

    input logic a, b, c,
    output logic y
    
);


logic p_ab, p_bc, p_ac;
/* three and2 instances and one or3 instance */

and2 ANDab ( .a(a), .b(b), .y(p_ab) );
and2 ANDbc ( .a(c), .b(b), .y(p_bc) );
and2 ANDac ( .a(a), .b(c), .y(p_ac) );

or3 ORabc( .a(p_ab), .b(p_bc), .c(p_ac), .y(y) );


endmodule

