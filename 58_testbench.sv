//58.WAC to generate pattern 0,0,0,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,7,7,7
class my_packet;  
  rand int d[]; 
  constraint c1 {d.size() == 24;} // The pattern has 15 elements  
  constraint c2 { 
    foreach (d[i])      
      if (i<3)
        d[i] == 0; 
      else     
        d[i] == (i/3); 
  } 
  
/*  constraint c3 {   // This constraint will also work and give same output , Here for position 0,1,2 the condition not required as like above in c2
    foreach (d[i])
        d[i] == (i/3); 
  } */
  
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
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  5 02:09 2025
The Generated Pattern is = '{0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7} 
The Generated Pattern is = '{0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7} 
The Generated Pattern is = '{0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7} 
The Generated Pattern is = '{0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7} 
The Generated Pattern is = '{0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7} 
           V C S   S i m u l a t i o n   R e p o r t 
