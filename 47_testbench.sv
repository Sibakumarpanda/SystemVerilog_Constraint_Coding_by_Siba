//47.Declare a 2D array with 3 rows and 4 columns, WAC to generate consecutive elements in each row and column .
class packet;  
  rand int a[3][4];   
  constraint c1 {        
      a[0][0] == 0;  // First element is 0
     } 
  
  constraint c2 {
    foreach (a[i, j]) {
      if (j > 0) 
        a[i][j] == a[i][j-1] + 1;  // Consecutive in the same row
       
      //else if (i > 0) 
      //  a[i][j] == a[i-1][j] + 1;  // Consecutive in the same column
    }
    }
  
  constraint c3 {        
    foreach (a[i, j]) {
      if (i > 0) 
        a[i][j] == a[i-1][j] + 1;  // Consecutive in the same column
    }
  }       
endclass

module tb_top; 
  initial begin   
    packet pkt = new();     
    repeat (5) begin
      if (pkt.randomize()) begin
        $display("The Generated 2D array values in Row %0p", pkt.a);      
      end else begin
        $display("Randomization failed");
      end
    end
  end  
endmodule
//Output
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  2 13:55 2025
The Generated 2D array values in Row '{'{0, 1, 2, 3}, '{1, 2, 3, 4}, '{2, 3, 4, 5}} 
The Generated 2D array values in Row '{'{0, 1, 2, 3}, '{1, 2, 3, 4}, '{2, 3, 4, 5}} 
The Generated 2D array values in Row '{'{0, 1, 2, 3}, '{1, 2, 3, 4}, '{2, 3, 4, 5}} 
The Generated 2D array values in Row '{'{0, 1, 2, 3}, '{1, 2, 3, 4}, '{2, 3, 4, 5}} 
The Generated 2D array values in Row '{'{0, 1, 2, 3}, '{1, 2, 3, 4}, '{2, 3, 4, 5}} 
           V C S   S i m u l a t i o n   R e p o r t     
