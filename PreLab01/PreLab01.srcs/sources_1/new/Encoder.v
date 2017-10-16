`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2017 08:53:27 PM
// Design Name: 
// Module Name: Encoder
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


module Encoder(
    in, out
    );
    
    input[3:0] in;
    output reg[1:0] out;
    
    always @* begin
        case (in)
            4'b0001 : out = 2'b00;
            4'b0010 : out = 2'b01;
            4'b0100 : out = 2'b10;
            4'b1000 : out = 2'b11;
            default : out = 2'b00;
        endcase
    end
    
endmodule
