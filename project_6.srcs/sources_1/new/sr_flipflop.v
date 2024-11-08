`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:06:00 PM
// Design Name: 
// Module Name: sr_flipflop
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


module sr_flipflop(clk, S, R, Q);
    input wire clk;
    input wire S; 
    input wire R;
    output reg Q;
    
    always @(posedge clk) begin
        if (S && !R)
            Q <= 1;
        else if (!S && R)
            Q <= 0;
    end
endmodule

