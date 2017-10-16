`timescale 1ns / 100ps
module decoder(

    input [15:0] instruction,
    input [4:0] flcnz,
	
	//register control signal
    output reg [4:0] tri_sel,	// select din : alu, shifter, mem, reg, etc...
	output reg register_we,		// write_enable to register  

	//alu control signal
	output reg [5:0] alu_sel,	// select alu ops
	output reg mux_sel0,		// select alu input : immediate or register file?	
    
	
	//signal to shifter
	output reg shift_imm,		// select shift amount : immediate or register?
	output reg mux_sel1,		// select shiftee : immediate or register file?
	output reg lui,				// lui op?

	//control flow signal
	output reg jmp,
	output reg br,

	//memory signal
	output reg memory_we,		//write_enable to memory
	
	//immediate extenstion signal
	output reg imm_ex_sel		// immediate extension : signed or unsigned?
	);

	//====================================
	//									//
	//	decoder is combinational logic  //
	//    	   do not make latch		//
	//									//
	//====================================

	always@( instruction, flcnz) begin
		//write code below
		//code needed here?

		//
		if( instruction[15:12]==4'b0000 && instruction[7:4] == 4'b0101) begin  //add
       		tri_sel = 5'b00010;
       		alu_sel = 6'b100000;
       		register_we = 1;
       		jmp = 0;
       		br = 0;
       		mux_sel0 = 0;
       		memory_we = 0;
		end
		else if( instruction[15:12]==) begin//addi
	
       
		end
		else if( instruction[15:12]== && instruction[7:4] == ) begin //sub
    
   		end
		else if( instruction[15:12]==) begin  //subi

		end
		else if( instruction[15:12]== && instruction[7:4] == ) begin//cmp
 
    	end        
		else if( instruction[15:12]==) begin      //cmpi
      
   		end
		else if( instruction[15:12]== && instruction[7:4] == ) begin //and
  
		end
		else if( instruction[15:12]==) begin // andi 
      
		end
		else if( instruction[15:12]== && instruction[7:4] == ) begin //or
      
		end
		else if( instruction[15:12]==) begin  //ori    
		
		end
		else if( instruction[15:12]== && instruction[7:4] == ) begin      //xor
		
		end
		else if( instruction[15:12]==) begin        //xori
		
		end
		else if( instruction[15:12]== && instruction[7:4] == ) begin      //mov 
        
		end
		else if( instruction[15:12]==) begin     //movi
        
		end
		else if( instruction[15:12]==&& instruction[7:4] == ) begin      //lsh 
        
		end
		else if( instruction[15:12]== && instruction[7:5] == ) begin      //lshi 
        
		end
		else if( instruction[15:12]==) begin      //lui
        
		end 
		else if( instruction[15:12]== && instruction[7:4] == ) begin     //load
		
		end
		else if( instruction[15:12]== && instruction[7:4] == ) begin      //store
		
		end        
		else if( instruction[15:12]== && instruction[7:4] == ) begin      //jal
		
		end 
		else if( instruction[15:12]==) begin      //Bcond 

       		if ( instruction[11:8] == 4'b0000 && flcnz[0] == 1) br = 1;
       		else if ( instruction[11:8] ==  && ) br = 1;
       		else if ( instruction[11:8] ==  && ) br = 1;
       		else if ( instruction[11:8] ==  && ) br = 1;
       		else if ( instruction[11:8] ==  && ) br = 1;
       		else if ( instruction[11:8] ==  && ) br = 1;
       		else if ( instruction[11:8] ==  && ) br = 1;
       		else if ( instruction[11:8] ==  && ) br = 1;
       		else if ( instruction[11:8] ==  && ) br = 1;
       		else if ( instruction[11:8] ==  && ) br = 1;
       		else if ( instruction[11:8] ==  && ) br = 1;
       		else if ( instruction[11:8] ==  && ) br = 1;
       		else if ( instruction[11:8] ==  && ) br = 1;
       		else if ( instruction[11:8] ==  && ) br = 1;
       		else if ( instruction[11:8] ==  && ) br = 1;
       		else if ( instruction[11:8] ==  && ) br = 1;
       		else if ( instruction[11:8] ==  && ) br = 1;
       		else if ( instruction[11:8] == ) br = 1;
       		else if ( instruction[11:8] == ) br = 0;
       		else ;
       
   		end 
		else if( instruction[15:12]== && instruction[7:4] == ) begin     //Jcond
			if ( instruction[11:8] == 4'b0000 && flcnz[0] == 1) jmp = 1;
       		else if ( instruction[11:8] == && ) jmp = 1;
       		else if ( instruction[11:8] == && ) jmp = 1;
       		else if ( instruction[11:8] == && ) jmp = 1;
       		else if ( instruction[11:8] == && ) jmp = 1;
       		else if ( instruction[11:8] == && ) jmp = 1;
       		else if ( instruction[11:8] == && ) jmp = 1;
       		else if ( instruction[11:8] == && ) jmp = 1;
       		else if ( instruction[11:8] == && ) jmp = 1;
       		else if ( instruction[11:8] == && ) jmp = 1;
       		else if ( instruction[11:8] == && ) jmp = 1;
       		else if ( instruction[11:8] == && ) jmp = 1;
       		else if ( instruction[11:8] == && ) jmp = 1;
       		else if ( instruction[11:8] == && ) jmp = 1;
       		else if ( instruction[11:8] == && ) jmp = 1;
       		else if ( instruction[11:8] == && ) jmp = 1;
       		else if ( instruction[11:8] == && ) jmp = 1;
       		else if ( instruction[11:8] == ) jmp = 1;
       		else if ( instruction[11:8] == ) jmp = 0;
       		else ;
   		end 
	end
endmodule

