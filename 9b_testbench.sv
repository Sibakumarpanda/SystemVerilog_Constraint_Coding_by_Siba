//9b. WAC to generate 32-bit number with exactly one high bit with out using any system function.
class my_packet; 
  rand bit [31:0] a; 
  rand int b;  
  constraint c1 {b inside {[0:31]};}
  //constraint c2 { a == (1 << $urandom_range(0, 31)); }
  constraint c2 { (a == (1 << b));} //This is a bitwise left shift operation. It takes the binary representation of the number 1 and shifts it to the left by b (for example 3) positions.  
endclass

module tb_top;  
  initial begin    
    my_packet pkt;
    pkt=new();    
    for (int i=0; i<10;i++) begin
      pkt.randomize();   
      $display("a=%b",pkt.a);     
    end    
  end  
endmodule  
