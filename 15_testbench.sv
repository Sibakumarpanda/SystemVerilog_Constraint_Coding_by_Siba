//15.WAC to generate Pattern of 0101010101

class my_packet;  
  rand int a [];
  //rand bit a [];
  constraint c1 {a.size ==15;}
  constraint c2 { foreach (a[i])
                    if (i %2 ==0)
                       a[i] ==0;
                    else
                       a[i] ==1;
                }  
endclass

module tb_top; 
  initial begin   
    my_packet pkt;
    pkt=new();  
    for (int i=0; i<10;i++) begin
      pkt.randomize();
      $display("The Generated Pattern in %0d iteration : a=%p",i,pkt.a); 
    end 
  end  
endmodule  
//output
The Generated Pattern in 0 iteration : a='{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0} 
The Generated Pattern in 1 iteration : a='{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0} 
The Generated Pattern in 2 iteration : a='{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0} 
The Generated Pattern in 3 iteration : a='{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0} 
The Generated Pattern in 4 iteration : a='{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0} 
The Generated Pattern in 5 iteration : a='{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0} 
The Generated Pattern in 6 iteration : a='{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0} 
The Generated Pattern in 7 iteration : a='{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0} 
The Generated Pattern in 8 iteration : a='{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0} 
The Generated Pattern in 9 iteration : a='{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0} 
           V C S   S i m u l a t i o n   R e p o r t 
