`timescale 1ns / 1ps

module four_to_one_mux(
    input [3:0] a,
    input [1:0] s,
    output reg cout
    );
    always @(*)
    begin
    case(s)
        2'b00: cout = a[0];
        2'b01: cout = a[1];
        2'b10: cout = a[2];
        2'b11: cout = a[3];
    endcase
    end
endmodule
