//10.WAC to generate Specific value generation (25, 27, 30, 36, 40, 45)
class my_packet;  
  rand bit [31:0] a; 
  constraint specific_values {
    a inside {25, 27, 30, 36, 40, 45};
     }  
endclass

module tb_top; 
  initial begin  
    my_packet pkt;
    pkt=new();  
    for (int i=0; i<10;i++) begin
      pkt.randomize();  
      $display("a=%0d",pkt.a);   
    end 
  end
endmodule  

//Output
a=45
a=27
a=30
a=45
a=27
a=36
a=40
a=25
a=45
a=25
           V C S   S i m u l a t i o n   R e p o r 
