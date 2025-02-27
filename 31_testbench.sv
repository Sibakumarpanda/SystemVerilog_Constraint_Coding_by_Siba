//31.WAC to generate Factorial generation of a number
class my_packet;  
  randc int unsigned num; //32bit number- The number for which to calculate the factorial
  int unsigned fact_num; //The calculated factorial  
  constraint c1 { num inside {[0:10]};}  
  
  function void calculate_factorial();
    fact_num =1; // Since factorial of zero =1 , we need to initialize the fact_num=1 and we can iterate it from 1 onwards as below   
    for (int i=1; i<=num; i++) begin
      fact_num =fact_num*i;
    end    
  endfunction
   
  function void post_randomize();
    calculate_factorial();
  endfunction
     
endclass 

module tb_top;
  initial begin
    my_packet pkt;
    pkt = new();
    for (int i = 0; i < 20; i++) begin      
      if (pkt.randomize()) begin
        $display("The Factorial of a number in %0d iteration: num=%0d fact_num=%0d", i, pkt.num, pkt.fact_num);
      end else begin
        $display("Randomization failed.");
      end
    end    
  end
endmodule
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Feb 26 22:10 2025
The Factorial of a number in 0 iteration: num=3 fact_num=6
The Factorial of a number in 1 iteration: num=4 fact_num=24
The Factorial of a number in 2 iteration: num=8 fact_num=40320
The Factorial of a number in 3 iteration: num=9 fact_num=362880
The Factorial of a number in 4 iteration: num=7 fact_num=5040
The Factorial of a number in 5 iteration: num=10 fact_num=3628800
The Factorial of a number in 6 iteration: num=2 fact_num=2
The Factorial of a number in 7 iteration: num=6 fact_num=720
The Factorial of a number in 8 iteration: num=5 fact_num=120
The Factorial of a number in 9 iteration: num=0 fact_num=1
The Factorial of a number in 10 iteration: num=1 fact_num=1
The Factorial of a number in 11 iteration: num=2 fact_num=2
The Factorial of a number in 12 iteration: num=10 fact_num=3628800
The Factorial of a number in 13 iteration: num=8 fact_num=40320
The Factorial of a number in 14 iteration: num=1 fact_num=1
The Factorial of a number in 15 iteration: num=9 fact_num=362880
The Factorial of a number in 16 iteration: num=3 fact_num=6
The Factorial of a number in 17 iteration: num=5 fact_num=120
The Factorial of a number in 18 iteration: num=6 fact_num=720
The Factorial of a number in 19 iteration: num=0 fact_num=1
           V C S   S i m u l a t i o n   R e p o r t 
