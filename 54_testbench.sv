//54.WAC to generate pattern of 00100200300400500
class my_packet;  
  rand byte d[]; // Use byte to accommodate values from 0 to 255
  constraint c1 {d.size() == 20;} // The pattern has 15 elements
  /*  constraint c2 {  // This is the constraint for thr Pattern 011022033044055
    foreach (d[i]) 
      if (i % 3 == 0) 
        d[i] == 0; 
      else     
        d[i] == ((i + 2) / 3); 
  } */  
  constraint c2 { 
    foreach (d[i]) 
      if ((i % 3) < 2) 
        d[i] == 0; 
      else     
        d[i] == ((i + 1) / 3); 
  }   
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
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  5 00:28 2025
The Generated Pattern is = '{0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0} 
The Generated Pattern is = '{0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0} 
The Generated Pattern is = '{0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0} 
The Generated Pattern is = '{0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0} 
The Generated Pattern is = '{0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0} 
           V C S   S i m u l a t i o n   R e p o r t 
