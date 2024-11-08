`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:21:16 PM
// Design Name: 
// Module Name: tb_t_flipflop
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


module tb_t_flipflop();
    reg clk, reset, T;
    wire Q;

    t_flipflop uut(
        .clk(clk),
        .reset(reset),
        .T(T),
        .Q(Q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1; T = 0; #10;
        reset = 0; T = 1; #10;
        T = 0; #10;
        $stop;
    end
endmodule
