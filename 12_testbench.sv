//12.WAC to generate 16-bit variable with 9consecutive 1's from LSB side
class my_packet;  
  rand bit [15:0] a; 
  constraint c1 {$countones(a) ==9;}
  constraint c2 { (a & (a>>1) & (a>>2) & (a>>3) & (a>>4) &
                (a>>5) & (a>>6) & (a>>7) & (a>>8)  
                  ) == 1;
               } 
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
//output
a=0000000111111111
a=0000000111111111
a=0000000111111111
a=0000000111111111
a=0000000111111111
a=0000000111111111
a=0000000111111111
a=0000000111111111
a=0000000111111111
a=0000000111111111
           V C S   S i m u l a t i o n   R e p o r t 
