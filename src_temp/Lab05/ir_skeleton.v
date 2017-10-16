`timescale 1ns/1ps
module ir (
	//global signal
	input clk,
	input rst_n,
	
	//control signal
	input jmp,
	input br,
	
	//datapath
    input [15:0] instruction_in,
    
    output reg [15:0] instruction_out,
    output [7:0] imm,disp,
    output [3:0] addr_a,addr_b
);
    
////// insert right value
    assign imm = ;
    assign disp = ;
    assign addr_a = ;
    assign addr_b = ;   // addr_b is different from addr_a
    

    always@(posedge clk)
////// insert code 

endmodule
