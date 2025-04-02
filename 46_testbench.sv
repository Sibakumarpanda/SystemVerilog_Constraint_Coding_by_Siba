//46.Declare a 2D array with 4 rows and 4 columns, Generates elements in it with below specified constraints
// -Each element is an integer between 1 and 100. 
// -The sum of all elements in each row should be less than 200. 
// -The values within each row must be sorted in ascending order (smaller to bigger).

class packet;
  rand int a[3:0][3:0];                  // 3  Declare a 2D array with 3 rows and 4 columns (3x4)  
  constraint c1 {                        // Each element in the array should be between 1 and 100  
    foreach (a[i,j]) 
        a[i][j] inside {[1:100]};      
        }

 /* constraint c2 {                        // Ensure sum of elements in each row is less than 200
    foreach (a[i,j]) //begin
      sum(a[i]) < 200;
    //end
  } */
  
  constraint c2 {                          // Ensure sum of elements in each row is less than 200
    foreach (a[i]) 
      (a[i][0] + a[i][1] + a[i][2] + a[i][3]) < 200;
      } 
    
  constraint c3 {                        // Each row's elements should be sorted in ascending order
    foreach (a[i,j]) 
      if (j<3)
        a[i][j] >= a[i][j+1];    
        }
endclass

module tb_top;
   initial begin     
    packet pkt = new();     
     repeat (5) begin
    if (pkt.randomize()) begin
      $display("The Generated 2D array values in Row %0p", pkt.a);
      //$finish;
    end
    else begin
      $display("Randomization failed");
      //$finish;
    end
     end    
  end
endmodule
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  2 13:56 2025
The Generated 2D array values in Row '{'{3, 4, 25, 63}, '{20, 29, 30, 48}, '{11, 18, 57, 98}, '{5, 30, 44, 71}} 
The Generated 2D array values in Row '{'{8, 33, 56, 89}, '{18, 20, 46, 74}, '{8, 21, 28, 29}, '{24, 30, 33, 100}} 
The Generated 2D array values in Row '{'{14, 23, 37, 83}, '{9, 18, 72, 92}, '{8, 10, 47, 80}, '{26, 32, 36, 50}} 
The Generated 2D array values in Row '{'{14, 18, 18, 23}, '{1, 15, 61, 66}, '{19, 32, 61, 63}, '{7, 47, 59, 83}} 
The Generated 2D array values in Row '{'{16, 39, 59, 62}, '{2, 23, 46, 78}, '{26, 31, 39, 50}, '{2, 5, 14, 87}} 
           V C S   S i m u l a t i o n   R e p o r t 
