//64.WAC to generate random values in ascending and descending order in a dynamic array of size 20.

class my_packet;
  rand bit[4:0] d[20]; 

  // Constraint for ascending order
  constraint ascending_order {
    foreach (d[i]) {
      if (i > 0) {
        d[i] > d[i-1]; // Ensure each element is greater than the previous one
      }
    }
  }

  // Constraint for descending order
/*  constraint descending_order {
    foreach (d[i]) {
      if (i > 0) {
        d[i] < d[i-1]; // Ensure each element is less than the previous one
      }
    }
  } */
endclass

module tb_top;
  initial begin
    my_packet   asc_array = new();
    my_packet   desc_array = new();

    // Randomize with ascending order constraint
    //desc_array.descending_order.constraint_mode (0);
    //asc_array.constraint_mode(desc_array.descending_order, 0); 
    //asc_array.constraint_mode(asc_array.ascending_order, 1); 
    if (asc_array.randomize()) begin
      $display("Ascending Order Array:");
      foreach (asc_array.d[i]) begin
        $display("d[%0d] = %0d\t", i, asc_array.d[i]);
      end
    end else begin
      $display("Failed to randomize ascending order array");
    end

    // Randomize with descending order constraint
 /*   asc_array.ascending_order.constraint_mode (0);
    //desc_array.constraint_mode(asc_array.ascending_order, 1); // Disable ascending order constraint
    //desc_array.constraint_mode(desc_array.descending_order, 1); // Enable descending order constraint
    if (desc_array.randomize()) begin
      $display("Descending Order Array:");
      foreach (desc_array.d[i]) begin
        $display("d[%0d] = %0d\t", i, desc_array.d[i]);
      end
    end else begin
      $display("Failed to randomize descending order array");
    end */
    
  end  
endmodule
//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  6 05:47 2025
Ascending Order Array:
d[0] = 1	
d[1] = 2	
d[2] = 3	
d[3] = 4	
d[4] = 6	
d[5] = 7	
d[6] = 8	
d[7] = 9	
d[8] = 11	
d[9] = 12	
d[10] = 14	
d[11] = 15	
d[12] = 16	
d[13] = 17	
d[14] = 18	
d[15] = 20	
d[16] = 21	
d[17] = 23	
d[18] = 27	
d[19] = 29	
           V C S   S i m u l a t i o n   R e p o r t       
