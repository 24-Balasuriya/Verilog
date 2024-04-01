//OR gate using data flow modeling
`timescale 1ns / 1ps

module or_gate(
    input a,b,
    output y
    );
    assign y = a | b;
endmodule