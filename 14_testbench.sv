//14.WAC to generate 4-variables with unique 4bit-value history constraint
class my_packet;  
  rand bit [3:0] a,b,c,d;   
  // Constraint to ensure the values of a, b, c, and d have unique/distnict values
  constraint unique_history_constraint {
                                        a != b && a != c && a != d && 
                                        b != c && b != d && 
                                        c != d;
                                        }   
endclass

module tb_top; 
  initial begin   
    my_packet pkt;
    pkt=new();  
    for (int i=0; i<10;i++) begin
      pkt.randomize();
      $display("The Generated values in %0d iteration : a=%0d,b=%0d,c=%0d,d=%0d",i,pkt.a,pkt.b,pkt.c,pkt.d); 
    end 
  end  
endmodule  
//output
The Generated values in 0 iteration : a=10,b=12,c=9,d=6
The Generated values in 1 iteration : a=13,b=6,c=2,d=14
The Generated values in 2 iteration : a=1,b=12,c=3,d=0
The Generated values in 3 iteration : a=2,b=4,c=3,d=11
The Generated values in 4 iteration : a=8,b=0,c=1,d=7
The Generated values in 5 iteration : a=13,b=1,c=6,d=12
The Generated values in 6 iteration : a=6,b=1,c=11,d=0
The Generated values in 7 iteration : a=10,b=7,c=14,d=6
The Generated values in 8 iteration : a=5,b=7,c=2,d=11
The Generated values in 9 iteration : a=10,b=12,c=9,d=7
           V C S   S i m u l a t i o n   R e p o r t
