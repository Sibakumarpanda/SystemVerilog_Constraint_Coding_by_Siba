//19.WAC to generate a sequence as 12345 54321

class my_packet;
  rand int a [];
  //rand bit a [];
  constraint c1 {a.size ==10;}
  constraint c2 { foreach (a[i])
                     if (i<5)
                       a[i] == i+1;
                     else
                       a[i] == a[9-i];   //a[5]=a[4], a[6]=a[3],a[7]=a[2]...
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
The Generated Pattern in 0 iteration : a='{1, 2, 3, 4, 5, 5, 4, 3, 2, 1} 
The Generated Pattern in 1 iteration : a='{1, 2, 3, 4, 5, 5, 4, 3, 2, 1} 
The Generated Pattern in 2 iteration : a='{1, 2, 3, 4, 5, 5, 4, 3, 2, 1} 
The Generated Pattern in 3 iteration : a='{1, 2, 3, 4, 5, 5, 4, 3, 2, 1} 
The Generated Pattern in 4 iteration : a='{1, 2, 3, 4, 5, 5, 4, 3, 2, 1} 
The Generated Pattern in 5 iteration : a='{1, 2, 3, 4, 5, 5, 4, 3, 2, 1} 
The Generated Pattern in 6 iteration : a='{1, 2, 3, 4, 5, 5, 4, 3, 2, 1} 
The Generated Pattern in 7 iteration : a='{1, 2, 3, 4, 5, 5, 4, 3, 2, 1} 
The Generated Pattern in 8 iteration : a='{1, 2, 3, 4, 5, 5, 4, 3, 2, 1} 
The Generated Pattern in 9 iteration : a='{1, 2, 3, 4, 5, 5, 4, 3, 2, 1} 
           V C S   S i m u l a t i o n   R e p o r t 
