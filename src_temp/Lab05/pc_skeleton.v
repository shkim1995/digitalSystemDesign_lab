`timescale 1ns/1ps

        
module pc (
	//global signal
    input clk,
	input rst_n,
	
	//control signal
	input jmp,
	input br,
	
	//instuction datapath
    input [15:0] src,
    input [7:0] disp,

	output reg [15:0]addr_instruction
);
	
    wire [15:0] disp_signed_extension;

    assign disp_signed_extension [15:8] = disp[7] ? 8'b11111111 : 8'b00000000;
    assign disp_signed_extension [7:0] = disp;
    

    always@(posedge clk)
////// insert code 

endmodule
