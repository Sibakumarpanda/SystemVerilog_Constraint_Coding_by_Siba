//52.WAC to generate pattern 1010101010 and 010101010

class my_packet;
  
  rand bit d[];   
  constraint c1 {d.size ()==20;}
  constraint c2 {                      
    foreach (d[i]) 
      if (i%2==0) 
        d[i] == 1; 
      else     
        d[i] == 0;      
    }
  
  /*  
  constraint c2 {    // This constraint is for the Pattern = 0101010101010101
                     
    foreach (d[i]) 
      if (i%2==0) 
        d[i] == 0; 
      else     
        d[i] == 1;      
    } */
  
endclass

module tb_top;  
  initial begin    
    my_packet pkt;
    pkt=new();   
    for (int i=0; i<10;i++) begin
      pkt.randomize();     
      $display("The Generated Pattern in iteration %d is = %0p",i,pkt.d);     
    end    
  end 
endmodule  
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  5 00:23 2025
The Generated Pattern in iteration           0 is = '{'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0} 
The Generated Pattern in iteration           1 is = '{'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0} 
The Generated Pattern in iteration           2 is = '{'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0} 
The Generated Pattern in iteration           3 is = '{'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0} 
The Generated Pattern in iteration           4 is = '{'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0} 
The Generated Pattern in iteration           5 is = '{'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0} 
The Generated Pattern in iteration           6 is = '{'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0} 
The Generated Pattern in iteration           7 is = '{'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0} 
The Generated Pattern in iteration           8 is = '{'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0} 
The Generated Pattern in iteration           9 is = '{'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0} 
           V C S   S i m u l a t i o n   R e p o r t 
