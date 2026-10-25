`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2026 11:13:59 AM
// Design Name: 
// Module Name: alu4
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


module alu4 (
    input logic [3:0] a, b,
    input logic [2:0] op,
    input logic cin,
    output logic [3:0] result,
    output logic cout, zero, negative, overflow
);
    localparam logic [2:0] OP_ADD = 3'b000, OP_SUB = 3'b001,
                           OP_AND = 3'b010, OP_OR = 3'b011, OP_XOR = 3'b100;
    
    logic [3:0] b_in, sum;
    logic add_cin, c4, is_arith;
    
    assign is_arith = (op == OP_ADD) || (op == OP_SUB);
    
    // one adder serves both addition and subtraction
    assign b_in = (op == OP_SUB) ? ~b : b;
    assign add_cin = (op == OP_SUB) ? 1'b1 : cin;
    
    adder4 u_add (.a(a), .b(b_in), .cin(add_cin), .sum(sum), .cout(c4));
    
    always_comb begin
        case (op)
            OP_ADD, OP_SUB: result = sum;
            OP_AND: result = a & b;
            OP_OR: result = a | b;
            OP_XOR: result = a ^ b;
            default: result = 4'b0000;
        endcase
    end
    
    assign cout = is_arith ? c4 : 1'b0;
    assign zero = (result == 4'b0000);
    assign negative = result[3];
    assign overflow = is_arith && (a[3] == b_in[3]) && (sum[3] != a[3]);

endmodule

