//Question2_WAC to generate odd numbers in range of 1-100
class my_packet;
  
  rand bit [6:0] a; // to represent 100, 7bits is required
  
  constraint c1 {a >1; a< 100;}
  constraint c2 {a %2 !=0;}
  
endclass


module tb_top;
  
  initial begin
    
    my_packet pkt;
    pkt=new();
    
    for (int i; i<15;i++) begin
      pkt.randomize();
      $display("a=%0d",pkt.a);
    end
    
  end
  
endmodule