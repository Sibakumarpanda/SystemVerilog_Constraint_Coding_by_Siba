//29.WAC to generate 3-bit numbers between where a single bit get randomized
class my_packet;  
  rand bit[2:0] a; //  
  constraint c1 {$onehot(a);}     
endclass 

module tb_top;  
  initial begin   
    my_packet pkt;
    pkt=new();    
    for (int i=0; i<20;i++) begin
      pkt.randomize();
      $display("The Generated Pattern in %0d iteration : a=%b -> %d ",i,pkt.a,pkt.a); 
    end 
  end 
endmodule 
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Feb 26 22:05 2025
The Generated Pattern in 0 iteration : a=001 -> 1 
The Generated Pattern in 1 iteration : a=010 -> 2 
The Generated Pattern in 2 iteration : a=001 -> 1 
The Generated Pattern in 3 iteration : a=010 -> 2 
The Generated Pattern in 4 iteration : a=001 -> 1 
The Generated Pattern in 5 iteration : a=010 -> 2 
The Generated Pattern in 6 iteration : a=001 -> 1 
The Generated Pattern in 7 iteration : a=001 -> 1 
The Generated Pattern in 8 iteration : a=010 -> 2 
The Generated Pattern in 9 iteration : a=100 -> 4 
The Generated Pattern in 10 iteration : a=100 -> 4 
The Generated Pattern in 11 iteration : a=001 -> 1 
The Generated Pattern in 12 iteration : a=001 -> 1 
The Generated Pattern in 13 iteration : a=100 -> 4 
The Generated Pattern in 14 iteration : a=010 -> 2 
The Generated Pattern in 15 iteration : a=010 -> 2 
The Generated Pattern in 16 iteration : a=010 -> 2 
The Generated Pattern in 17 iteration : a=010 -> 2 
The Generated Pattern in 18 iteration : a=100 -> 4 
The Generated Pattern in 19 iteration : a=010 -> 2 
           V C S   S i m u l a t i o n   R e p o r t 
