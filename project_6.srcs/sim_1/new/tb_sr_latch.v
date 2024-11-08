`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:03:35 PM
// Design Name: 
// Module Name: tb_sr_latch
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


module tb_sr_latch();
    reg S, R;
    wire Q, Qn;

    sr_latch uut(
        .S(S),
        .R(R),
        .Q(Q),
        .Qn(Qn)
    );

    initial begin
        $monitor("S = %b, R = %b, Q = %b, Qn = %b", S, R, Q, Qn);
        S = 0; R = 0; #10;
        S = 1; R = 0; #10;
        S = 0; R = 1; #10;
        S = 0; R = 0; #10;
        S = 1; R = 1; #10;
        $stop;
    end
endmodule

