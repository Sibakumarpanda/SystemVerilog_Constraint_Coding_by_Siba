//65.WAC to generate 4x4 matrices with elements of size 4bits in such a way that , the two diagonal have the same value.
class packet_matrix_4x4;
  rand bit [3:0] matrix[4][4]; // 4x4 matrix with 4-bit elements [row][column]

  // Constraint to ensure the two diagonals have the same value
  constraint diagonal_constraint {
       matrix[0][0] == matrix[0][3];
       matrix[1][1] == matrix[1][2];
       matrix[2][1] == matrix[2][2];
       matrix[3][3] == matrix[3][3];
     }
endclass

module tb_top;
  initial begin
    packet_matrix_4x4 pkt = new();    
    if (pkt.randomize()) begin
      $display("Generated 4x4 Matrix:");
      for (int i = 0; i < 4; i++) begin
        for (int j = 0; j < 4; j++) begin
          $display("matrix[%0d][%0d] = %0d", i, j, pkt.matrix[i][j]);
        end
      end
    end 
    else begin
      $display("Failed to randomize matrix");
    end    
  end
endmodule
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  6 05:56 2025
Generated 4x4 Matrix:
matrix[0][0] = 5
matrix[0][1] = 3
matrix[0][2] = 15
matrix[0][3] = 5
matrix[1][0] = 1
matrix[1][1] = 7
matrix[1][2] = 7
matrix[1][3] = 10
matrix[2][0] = 4
matrix[2][1] = 4
matrix[2][2] = 4
matrix[2][3] = 3
matrix[3][0] = 2
matrix[3][1] = 9
matrix[3][2] = 14
matrix[3][3] = 6
           V C S   S i m u l a t i o n   R e p o r t 
