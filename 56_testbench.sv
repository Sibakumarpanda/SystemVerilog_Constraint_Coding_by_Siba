//56.WAC to generate pattern 5, -10,15,-20,25,-30,35,-40,45,-50,55,-60
//Hint : For even indices , the values are Positive and for odd indices the values are Negative
class my_packet;  
  rand int d[]; 
  constraint c1 {d.size() == 12;}   
  constraint c2 {
    foreach (d[i])
      if (i%2==0)
        d[i] == 5 *(i+1)*1;
       else
         d[i] == 5 *(i+1)*-1;
  }
    
/*  constraint c3 { 
    foreach (d[i]) 
      d[i] == ((i + 1) * 5) * (i % 2 == 0 ? 1 : -1); // This constraint is an alternate way(using conditional operator) to write for above c2 constraint, It will also work
  } */
  
endclass

module tb_top;  
  initial begin    
    my_packet pkt;
    pkt = new();    
    repeat(5) begin
    pkt.randomize();     
    $display("The Generated Pattern is = %0p", pkt.d);
    end
  end 
endmodule
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  5 01:46 2025
The Generated Pattern is = '{5, -10, 15, -20, 25, -30, 35, -40, 45, -50, 55, -60} 
The Generated Pattern is = '{5, -10, 15, -20, 25, -30, 35, -40, 45, -50, 55, -60} 
The Generated Pattern is = '{5, -10, 15, -20, 25, -30, 35, -40, 45, -50, 55, -60} 
The Generated Pattern is = '{5, -10, 15, -20, 25, -30, 35, -40, 45, -50, 55, -60} 
The Generated Pattern is = '{5, -10, 15, -20, 25, -30, 35, -40, 45, -50, 55, -60} 
           V C S   S i m u l a t i o n   R e p o r t 
