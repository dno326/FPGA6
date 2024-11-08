`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:00:16 PM
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(S,R,Q,Qn);
    input wire S;
    input wire R;
    output wire Q;
    output wire Qn;
    
    reg Q_reg, Qn_reg;

    assign Q = Q_reg;
    assign Qn = Qn_reg;

    always @(*) begin
        if (S && !R) begin
            Q_reg = 1;
            Qn_reg = 0;
        end else if (!S && R) begin
            Q_reg = 0;
            Qn_reg = 1;
        end
    end
endmodule

