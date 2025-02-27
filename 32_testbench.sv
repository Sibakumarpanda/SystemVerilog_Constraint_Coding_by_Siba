//32.WAC to generate Fibonacci series
//The Fibonacci sequence is a type series where each number is the sum of the two that precede it. 
//It starts from 0 and 1 usually. 
//The Fibonacci sequence is given by 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, and so on. The numbers in the Fibonacci sequence are also called Fibonacci numbers.
class my_packet;  
  rand int unsigned num_terms; //32bit number- Number of terms in the Fibonacci series
  int unsigned fibonacci_series[]; //Dynamic array to store the Fibonacci series  
  constraint c1 { num_terms inside {[1:20]};}
    
  function void calculate_fibonacci();
    fibonacci_series.delete();          //clear the array
    fibonacci_series = new[num_terms]; // Allocate space for the series    
    if (num_terms >= 1) 
        fibonacci_series[0] = 0;
    if (num_terms >= 2) 
        fibonacci_series[1] = 1;   
    for (int i=2; i<=num_terms; i++) begin
      fibonacci_series[i] = fibonacci_series[i-1]+fibonacci_series[i-2];
    end   
  endfunction
   
  function void post_randomize();
    calculate_fibonacci();
  endfunction     
endclass 

module tb_top;
  initial begin
    my_packet pkt;
    pkt = new();
    for (int i = 0; i < 10; i++) begin   
      if (pkt.randomize()) begin
        $display("In %0d iteration : Fibonacci series with %0d terms: %0p", i, pkt.num_terms, pkt.fibonacci_series);
      end else begin
        $display("Randomization failed.");
      end
    end   
  end
endmodule
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Feb 26 22:14 2025
In 0 iteration : Fibonacci series with 5 terms: '{'h0, 'h1, 'h1, 'h2, 'h3} 
In 1 iteration : Fibonacci series with 5 terms: '{'h0, 'h1, 'h1, 'h2, 'h3} 
In 2 iteration : Fibonacci series with 13 terms: '{'h0, 'h1, 'h1, 'h2, 'h3, 'h5, 'h8, 'hd, 'h15, 'h22, 'h37, 'h59, 'h90} 
In 3 iteration : Fibonacci series with 16 terms: '{'h0, 'h1, 'h1, 'h2, 'h3, 'h5, 'h8, 'hd, 'h15, 'h22, 'h37, 'h59, 'h90, 'he9, 'h179, 'h262} 
In 4 iteration : Fibonacci series with 5 terms: '{'h0, 'h1, 'h1, 'h2, 'h3} 
In 5 iteration : Fibonacci series with 3 terms: '{'h0, 'h1, 'h1} 
In 6 iteration : Fibonacci series with 19 terms: '{'h0, 'h1, 'h1, 'h2, 'h3, 'h5, 'h8, 'hd, 'h15, 'h22, 'h37, 'h59, 'h90, 'he9, 'h179, 'h262, 'h3db, 'h63d, 'ha18} 
In 7 iteration : Fibonacci series with 5 terms: '{'h0, 'h1, 'h1, 'h2, 'h3} 
In 8 iteration : Fibonacci series with 13 terms: '{'h0, 'h1, 'h1, 'h2, 'h3, 'h5, 'h8, 'hd, 'h15, 'h22, 'h37, 'h59, 'h90} 
In 9 iteration : Fibonacci series with 6 terms: '{'h0, 'h1, 'h1, 'h2, 'h3, 'h5} 
           V C S   S i m u l a t i o n   R e p o r t 
