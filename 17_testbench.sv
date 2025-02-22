//17.WAC to generate 10-bit alternating numbers

class my_packet;
  //rand int a [];
  rand bit a [];
  constraint c1 {a.size ==10;}
  constraint c2 { foreach (a[i])
                    if (i<9)
                      a[i] != a[i+1];                                   
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
The Generated Pattern in 0 iteration : a='{'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1} 
The Generated Pattern in 1 iteration : a='{'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0} 
The Generated Pattern in 2 iteration : a='{'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1} 
The Generated Pattern in 3 iteration : a='{'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1} 
The Generated Pattern in 4 iteration : a='{'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0} 
The Generated Pattern in 5 iteration : a='{'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0} 
The Generated Pattern in 6 iteration : a='{'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1} 
The Generated Pattern in 7 iteration : a='{'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0} 
The Generated Pattern in 8 iteration : a='{'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1} 
The Generated Pattern in 9 iteration : a='{'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1, 'h0, 'h1} 
           V C S   S i m u l a t i o n   R e p o r t 
