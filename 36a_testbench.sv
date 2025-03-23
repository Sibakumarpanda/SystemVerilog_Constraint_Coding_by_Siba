//36a. WAC to generate 10 Unique numbers in between 1-50 without using unique keyword

class my_packet;
  randc int a ;       //randc will generate cyclic randomized number  and it will not generate repeated values untill the iteration completes
  constraint c1 {a inside {[1:50]};}
  
 endclass 

module tb_top;
  
  initial begin   
    my_packet pkt;
    pkt=new();    
    for (int i=0; i<10;i++) begin
      pkt.randomize();
      $display("The Generated Unique number in %0d iteration : a=%0d",i,pkt.a); 
    end 
  end
  
endmodule  
