//13.WAC to generate 32-bit number with exactly one high bit using bit manipulation
class my_packet;
  rand bit [31:0] a; 
  //constraint c1 {$onehot(a);}
  //bit manipulation
  // Attention! You need to use the parentheses on the right of the equation
  constraint c1 { (a & (a-1)) == 0;
                   a !=0;}    
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
//Output
a=00000000000010000000000000000000
a=00000000000000000000001000000000
a=00000001000000000000000000000000
a=00000000000000000001000000000000
a=00000000000000000000000100000000
a=00000000000000000100000000000000
a=00000000000000000000000000000001
a=00000000100000000000000000000000
a=00000000000000000010000000000000
a=00000000000000010000000000000000
           V C S   S i m u l a t i o n   R e p o r t 
