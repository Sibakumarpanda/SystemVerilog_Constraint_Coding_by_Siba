//22.WAC to generate Unique multiples of 3 and 5 with in 100

class my_packet;
  randc int a ; 
  constraint c1 {a inside {[1:100]};
                 a %3 ==0;
                 a %5 ==0;
                }  
endclass 

module tb_top; 
  initial begin   
    my_packet pkt;
    pkt=new();    
    for (int i=0; i<10;i++) begin
      pkt.randomize();
      $display("The Generated Pattern in %0d iteration : a=%0d",i,pkt.a); 
    end 
  end  
endmodule  
//Output
The Generated Pattern in 0 iteration : a=30
The Generated Pattern in 1 iteration : a=15
The Generated Pattern in 2 iteration : a=45
The Generated Pattern in 3 iteration : a=90
The Generated Pattern in 4 iteration : a=75
The Generated Pattern in 5 iteration : a=60
The Generated Pattern in 6 iteration : a=30
The Generated Pattern in 7 iteration : a=90
The Generated Pattern in 8 iteration : a=45
The Generated Pattern in 9 iteration : a=75
           V C S   S i m u l a t i o n   R e p o r t 
