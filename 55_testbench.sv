//55.WAC to generate pattern of 9,19,29,39,49,59,69,79,89,99
//Hint: Increments by 10
class my_packet;  
  rand int d[]; 
  constraint c1 {d.size() == 10;}   
  constraint c2 { 
    foreach (d[i]) 
      d[i] == 9+ (10*i);       
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
//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  5 01:27 2025
The Generated Pattern is = '{9, 19, 29, 39, 49, 59, 69, 79, 89, 99} 
The Generated Pattern is = '{9, 19, 29, 39, 49, 59, 69, 79, 89, 99} 
The Generated Pattern is = '{9, 19, 29, 39, 49, 59, 69, 79, 89, 99} 
The Generated Pattern is = '{9, 19, 29, 39, 49, 59, 69, 79, 89, 99} 
The Generated Pattern is = '{9, 19, 29, 39, 49, 59, 69, 79, 89, 99} 
           V C S   S i m u l a t i o n   R e p o r t 
