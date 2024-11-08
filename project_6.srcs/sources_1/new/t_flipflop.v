`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:20:22 PM
// Design Name: 
// Module Name: t_flipflop
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


module t_flipflop(clk, reset, T, Q);
    input wire clk;
    input wire reset;
    input wire T;
    output reg Q;

    always @(posedge clk) begin
        if (reset)
            Q <= 0;
        else if (T)
            Q <= ~Q; // Toggle state on T = 1
    end
endmodule 

