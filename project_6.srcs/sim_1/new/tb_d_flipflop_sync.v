`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:10:25 PM
// Design Name: 
// Module Name: tb_d_flipflop_sync
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


module tb_d_flipflop_sync();
    reg clk, reset, D;
    wire Q;

    d_flipflop_sync uut (
        .clk(clk),
        .reset(reset),
        .D(D),
        .Q(Q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1; D = 0; #10;
        reset = 0; D = 1; #10;
        D = 1; #10;
        reset = 1; #10
        reset = 0; D = 1; #10
        $stop;
    end
endmodule

