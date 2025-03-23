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

//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Mar 23 05:17 2025
The Generated Unique number in 0 iteration : a=17
The Generated Unique number in 1 iteration : a=20
The Generated Unique number in 2 iteration : a=37
The Generated Unique number in 3 iteration : a=39
The Generated Unique number in 4 iteration : a=48
The Generated Unique number in 5 iteration : a=49
The Generated Unique number in 6 iteration : a=33
The Generated Unique number in 7 iteration : a=50
The Generated Unique number in 8 iteration : a=22
The Generated Unique number in 9 iteration : a=12
           V C S   S i m u l a t i o n   R e p o r t 
