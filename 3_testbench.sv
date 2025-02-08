// WAC to generate Random even numbers in range of 1-100 which are multiples 4
class my_packet;
  
  randc bit [6:0] a; // to represent 100, 7bits is required

  constraint c1 { a inside {[1:100]};
                  a %2 ==0;
                }
  constraint c2 { a %4 ==0;}
  
  
endclass


module tb_top;
  
  initial begin
    
    my_packet pkt;
    pkt=new();
    
    for (int i=0; i<20;i++) begin
      pkt.randomize();
      $display("a=%0d",pkt.a);
    end
    
  end
  
endmodule