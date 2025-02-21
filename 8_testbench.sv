//8. WAC to generate 16-bit variable with non consecutive 1's
class my_packet;  
  rand bit [15:0] a; 
  constraint c1 {$countones(a) ==8;}  
  constraint c2 { foreach (a[i])
                    if (i %2 ==0)
                      a[i] == 1'b0;
                    else 
                      a[i] ==1'b1;
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
// Output 
a=1010101010101010
a=1010101010101010
a=1010101010101010
a=1010101010101010
a=1010101010101010
a=1010101010101010
a=1010101010101010
a=1010101010101010
a=1010101010101010
a=1010101010101010
           V C S   S i m u l a t i o n   R e p o r t 
