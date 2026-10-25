`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2026 10:14:39 AM
// Design Name: 
// Module Name: gates
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

module gates4; endmodule
// gates.sv - a small library of gate modules. All inputs a, b, c, d; output y.
module inv (input logic a, output logic y); assign y = ~a; endmodule
module and2 (input logic a, b, output logic y); assign y = a & b; endmodule
module and3 (input logic a, b, c, output logic y); assign y = a & b & c; endmodule
module or2 (input logic a, b, output logic y); assign y = a | b; endmodule
module or3 (input logic a, b, c, output logic y); assign y = a | b | c; endmodule
module or4 (input logic a, b, c, d, output logic y); assign y = a | b | c | d; endmodule
module nand2 (input logic a, b, output logic y); assign y = ~(a & b); endmodule
module nand3 (input logic a, b, c, output logic y); assign y = ~(a & b & c); endmodule
module xor2 (input logic a, b, output logic y); assign y = a ^ b; endmodule
