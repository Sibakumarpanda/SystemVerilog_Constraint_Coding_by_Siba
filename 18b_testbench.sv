//18b.WAC to generate a Sequence of 1122334455667788991010

class my_packet;
  rand int a [];
  //rand bit a []; 
  constraint c1 {a.size ==20;}
  constraint c3 { foreach (a[i])
                     if (i%2==0)
                       a[i] == ((i/2) % 10)+1;
                     else
                       a[i] == a[i-1];
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
The Generated Pattern in 0 iteration : a='{1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10} 
The Generated Pattern in 1 iteration : a='{1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10} 
The Generated Pattern in 2 iteration : a='{1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10} 
The Generated Pattern in 3 iteration : a='{1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10} 
The Generated Pattern in 4 iteration : a='{1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10} 
The Generated Pattern in 5 iteration : a='{1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10} 
The Generated Pattern in 6 iteration : a='{1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10} 
The Generated Pattern in 7 iteration : a='{1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10} 
The Generated Pattern in 8 iteration : a='{1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10} 
The Generated Pattern in 9 iteration : a='{1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10} 
           V C S   S i m u l a t i o n   R e p o r t
