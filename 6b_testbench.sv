//6b. WAC to generate 32-bit variable with exactly 12 consecutive 1's
class my_packet;
  
  rand bit [31:0] a;   
  constraint c1 {$countones(a) ==12;}

  constraint c2 {
                (a & (a>>1) & (a>>2) & (a>>3) & (a>>4) &
                (a>>5) & (a>>6) & (a>>7) & (a>>8) &
                (a>>9) & (a>>10) & (a>>11)  
                ) != 0;
               } 
  
  /* constraint c2 {   // if we will use this constraint then it will produce the consecutiveness from LSB side 12 1's
                (a & (a>>1) & (a>>2) & (a>>3) & (a>>4) &
                (a>>5) & (a>>6) & (a>>7) & (a>>8) &
                (a>>9) & (a>>10) & (a>>11)  
                ) == 1;
               } */
endclass

module tb_top;
  
  initial begin    
    my_packet pkt;
    pkt=new();
    
    for (int i=0; i<20;i++) begin
      pkt.randomize();     
      $display("a=%b",pkt.a) ;     
    end    
  end 
endmodule  

// V C S   S i m u l a t i o n   R e p o r t
a=00000000000011111111111100000000
a=00000001111111111110000000000000
a=00000001111111111110000000000000
a=00000001111111111110000000000000
a=00000000000000000001111111111110
a=00000000000000001111111111110000
a=00000000000000000001111111111110
a=00000000111111111111000000000000
a=00000000000000000011111111111100
a=00000000000000011111111111100000
a=01111111111110000000000000000000
a=00111111111111000000000000000000
a=00011111111111100000000000000000
a=00000000011111111111100000000000
a=00000000000000111111111111000000
a=01111111111110000000000000000000
a=00000000000000000111111111111000
a=00000000000000001111111111110000
a=00000000000000011111111111100000
a=00000000000000000111111111111000
            
