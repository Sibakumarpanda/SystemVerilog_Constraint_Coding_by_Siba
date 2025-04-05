//48.WAC to generate pattern of 6 continuous 1's in 16 bit variable
class my_packet;  
  rand bit [15:0] a;   
  constraint c1 {$countones(a) ==6;}

  constraint c2 {
                (a & (a>>1) & (a>>2) & (a>>3) & (a>>4) &
                (a>>5)   
                ) != 0;
               } 
  
/*   constraint c2 {   // if we will use this constraint then it will produce the consecutiveness from LSB side 12 1's
                (a & (a>>1) & (a>>2) & (a>>3) & (a>>4) &
                (a>>5)
                ) == 1;
               } */
endclass

module tb_top;  
  initial begin    
    my_packet pkt;
    pkt=new();
    
    for (int i=0; i<20;i++) begin
      pkt.randomize();     
      $display("a=%b",pkt.a);     
    end    
  end 
endmodule  
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  5 00:10 2025
a=0000000011111100
a=0111111000000000
a=0000000111111000
a=0000000111111000
a=0000000000111111
a=0000000111111000
a=0001111110000000
a=0000000011111100
a=0000000001111110
a=0000011111100000
a=0111111000000000
a=0011111100000000
a=0001111110000000
a=0000000001111110
a=0000000001111110
a=0111111000000000
a=0000001111110000
a=0000000001111110
a=0000000011111100
a=0000011111100000
           V C S   S i m u l a t i o n   R e p o r t 
