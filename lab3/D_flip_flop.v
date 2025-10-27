module d_flip(output reg Q , input D ,input reset ,input clk);

    always @(posedge clk)
    begin 

    if(reset) Q <= 0 ; 
    else Q<=D ; 
    end

endmodule 