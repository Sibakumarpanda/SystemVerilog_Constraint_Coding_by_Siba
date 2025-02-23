//25.WAC to generate Payload data in between 30 to 70 which is divisible by 5
class my_packet;  
  randc bit[6:0] a; // To represent 70 , 7 bits are required 
  constraint c1 {a inside {[30:70]};
                 a %5 ==0;}     
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
//output
The Generated Pattern in 0 iteration : a=70
The Generated Pattern in 1 iteration : a=65
The Generated Pattern in 2 iteration : a=60
The Generated Pattern in 3 iteration : a=55
The Generated Pattern in 4 iteration : a=35
The Generated Pattern in 5 iteration : a=30
The Generated Pattern in 6 iteration : a=50
The Generated Pattern in 7 iteration : a=40
The Generated Pattern in 8 iteration : a=45
The Generated Pattern in 9 iteration : a=40
           V C S   S i m u l a t i o n   R e p o r t
