//50.WAC to generate pattern of 15 ,1's in a 16bit variable and for the rest 1 bit let tool decide its position. Randomize the 16bit variable 10 times .
class my_packet;  
  rand bit [15:0] a;   
  constraint c1 {$countones(a) ==15;}
 /* constraint c2 {
                (a & (a>>1) & (a>>2) & (a>>3) & (a>>4) &
                (a>>5)   
                ) != 0;
               } */
  
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
    for (int i=0; i<10;i++) begin
      pkt.randomize();     
      $display("a=%b",pkt.a);     
    end    
  end 
endmodule 
//Output
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  5 00:16 2025
a=1111111111011111
a=1111111101111111
a=1111111101111111
a=1111111111111101
a=1111111110111111
a=0111111111111111
a=1101111111111111
a=0111111111111111
a=1111111111111110
a=1111111011111111
           V C S   S i m u l a t i o n   R e p o r t 
