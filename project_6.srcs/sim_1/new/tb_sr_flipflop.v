`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:07:15 PM
// Design Name: 
// Module Name: tb_sr_flipflop
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


module tb_sr_flipflop();
    reg clk, S, R;
    wire Q;

    sr_flipflop uut (
        .clk(clk),
        .S(S),
        .R(R),
        .Q(Q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor("S = %b, R = %b, Q = %b", S, R, Q);
        S = 0; R = 0; #10;
        S = 1; R = 0; #10;
        S = 0; R = 1; #10;
        S = 0; R = 0; #10;
        S = 1; R = 1; #10;
        $stop;
    end
endmodule
