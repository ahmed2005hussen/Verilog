module FullAdder(output sum , output carry , input a , input b , input c); 

    wire s1 , c1 , c2 ; 

    HalfAdder HA1(s1, c1 , a ,b); 
    HalfAdder HA2(sum , c2 , s1 , c); 

    or(carry , c1 , c2); 

endmodule