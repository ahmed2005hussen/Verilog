module testbench(); 

    integer i ;

    reg a,b ,c ; 
    wire sum , carry; 

    reg[2:0] inputs; 

    reg[1:0] outputs ; 

    FullAdder f(sum ,carry , a , b ,c );

    initial 
    begin 
        inputs = 0 ; 

        for(i=0 ; i< 8 ; i=i+1)
        begin

            a = inputs[2]; 
            b= inputs[1]; 
            c= inputs[0]; 
            #10; 

            outputs = a+b+c; 

            if(sum!= outputs[0]  || carry!=outputs[1] )
                $display("%b test faild at %t", inputs, $time); 
            else
                $display("%b test passed at %t", inputs, $time); 

            inputs=inputs+1;


        end

        $finish; 

    end 

endmodule