module  JK_FlipFlop (output reg Q , input j , input k , input reset , input clk); 

always @(posedge clk)

    begin

        if(reset) Q <= 0 ; 
        else if (j ^ k ) Q <= j ; 
        else if (j & k ) Q <= ~Q ; 

    end
    
    
endmodule