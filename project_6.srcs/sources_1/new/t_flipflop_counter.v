`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:33:21 PM
// Design Name: 
// Module Name: t_flipflop_counter
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


module t_flipflop_counter(clk, reset, count);
    input wire clk;
    input wire reset;
    output  [2:0] count;
    
    wire [2:0] T;
    
 t_flipflop UUT0(clk, reset, 1'b1, count[0]);
 assign T[0] = count[0];
 
 t_flipflop UUT1(clk, reset, T[0], count[1]);
 assign T[1] = T[0] & count[1];
 
 t_flipflop UUT2(clk, reset, T[1], count[2]);
    
endmodule 

   /* assign T = count;

    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 5'b00000;
        else
            count <= count + 1;
    end*/





