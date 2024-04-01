`timescale 1ns / 1ps

module four_bit_adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output c0
    );
    wire w1,w2,w3;
    full_adder u0(.a(a[0]), .b(b[0]), .c(cin), .sum(sum[0]), .carry(w1));
    full_adder u1(.a(a[1]), .b(b[1]), .c(w1), .sum(sum[1]), .carry(w2));
    full_adder u2(.a(a[2]), .b(b[2]), .c(w2), .sum(sum[2]), .carry(w3));
    full_adder u3(.a(a[3]), .b(b[3]), .c(w3), .sum(sum[3]), .carry(c0));
    
endmodule