`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:09:19 PM
// Design Name: 
// Module Name: d_flipflop_sync
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


module d_flipflop_sync(clk, reset, D, Q);
    input wire clk;
    input wire reset;
    input wire D;
    output reg Q;
    
    always @(posedge clk) begin
        if (reset)
            Q <= 0;
        else
            Q <= D;
    end
endmodule

