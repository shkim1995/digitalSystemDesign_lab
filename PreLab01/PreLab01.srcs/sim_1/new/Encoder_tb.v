`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2017 09:00:43 PM
// Design Name: 
// Module Name: Encoder_tb
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


module Encoder_tb(

    );
    
reg[3:0] in;
wire[1:0] out;
    
Encoder encoder(.in(in), .out(out));
    
initial begin
    
    in = 4'b1000;
    #10
    in = 4'b0100;
    #10
    in = 4'b0010;
    #10
    in = 4'b0001;
    #10
    in = 4'b1111;
    
end    
    
    
    
endmodule
