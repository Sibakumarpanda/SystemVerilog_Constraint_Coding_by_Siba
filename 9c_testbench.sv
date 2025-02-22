//9c. WAC to generate 32-bit number with exactly one low bit and others as high bit with out using any system function
class my_packet;
  rand bit [31:0] a; 
  rand int b; 
  constraint c1 {b inside {[0:31]};}
  //constraint c2 { a == ~ (1 << $urandom_range(0, 31)); }
  constraint c2 { (a == ~(1 << b));} //This is a bitwise left shift operation. It takes the binary representation of the number 1 and shifts it to the left by b (for example 3) positions.    
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
//output
a=11111111111111111111101111111111
a=11101111111111111111111111111111
a=11111111111111111110111111111111
a=11111101111111111111111111111111
a=11111101111111111111111111111111
a=01111111111111111111111111111111
a=11111111111111011111111111111111
a=01111111111111111111111111111111
a=11111111110111111111111111111111
a=11111111111111111111111111101111
           V C S   S i m u l a t i o n   R e p o r t 
