//60.WAC to generate even numbers in odd location and odd numbers in even location in a dynamic array of size 30.
class my_packet;  
  rand bit [2:0] d[]; 
  constraint c1 {d.size() == 30;}   
/*  constraint c2 { 
    foreach (d[i])
      if (i%2==0)
        d[i] == i+1; 
      else     
        d[i] == i; 
  } */  
  constraint c3 { 
    foreach (d[i]) 
      if (i % 2 == 0)   // Even index
        d[i] % 2 == 1;  // Odd number
      else              // Odd index
        d[i] % 2 == 0;  // Even number
  }   
endclass

module tb_top;  
  initial begin    
    my_packet pkt;
    pkt = new();    
    repeat(5) begin
    pkt.randomize();     
    $display("The Generated Pattern is = %0p", pkt.d);
    end
  end 
endmodule
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  5 02:30 2025
The Generated Pattern is = '{'h1, 'h4, 'h3, 'h0, 'h5, 'h6, 'h3, 'h0, 'h7, 'h4, 'h3, 'h2, 'h1, 'h2, 'h7, 'h4, 'h5, 'h2, 'h5, 'h4, 'h5, 'h0, 'h3, 'h0, 'h3, 'h2, 'h1, 'h0, 'h3, 'h4} 
The Generated Pattern is = '{'h3, 'h0, 'h1, 'h2, 'h3, 'h6, 'h3, 'h0, 'h3, 'h0, 'h3, 'h6, 'h5, 'h4, 'h3, 'h4, 'h1, 'h6, 'h5, 'h0, 'h3, 'h2, 'h7, 'h0, 'h5, 'h2, 'h7, 'h6, 'h5, 'h0} 
The Generated Pattern is = '{'h1, 'h2, 'h7, 'h4, 'h1, 'h6, 'h1, 'h4, 'h5, 'h0, 'h3, 'h0, 'h7, 'h0, 'h5, 'h6, 'h1, 'h0, 'h1, 'h0, 'h1, 'h6, 'h3, 'h4, 'h3, 'h4, 'h7, 'h4, 'h3, 'h6} 
The Generated Pattern is = '{'h5, 'h4, 'h3, 'h0, 'h1, 'h2, 'h5, 'h0, 'h1, 'h2, 'h5, 'h0, 'h5, 'h6, 'h3, 'h4, 'h5, 'h2, 'h1, 'h6, 'h7, 'h6, 'h3, 'h4, 'h7, 'h4, 'h3, 'h0, 'h5, 'h4} 
The Generated Pattern is = '{'h7, 'h4, 'h1, 'h2, 'h3, 'h4, 'h3, 'h4, 'h3, 'h0, 'h3, 'h6, 'h7, 'h4, 'h5, 'h6, 'h7, 'h0, 'h7, 'h6, 'h1, 'h0, 'h5, 'h4, 'h7, 'h2, 'h7, 'h2, 'h5, 'h6} 
           V C S   S i m u l a t i o n   R e p o r t 
