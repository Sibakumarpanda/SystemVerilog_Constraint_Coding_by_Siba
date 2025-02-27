//30.WAC to generate 4bit Gray code sequence generation
class my_packet;  
  rand bit [3:0] b; //4bit binary value
  bit [3:0] g;      //4bit grey code value  
  constraint c1 {g == (b >> 1) ^ b; }  
  // Calculate g after randomization that is post randomization -> This is essential here , because we need to calculate the greay code , once binary code value get randomized 
  function void post_randomize();
    g = (b >> 1) ^ b;
  endfunction     
endclass 

module tb_top;
  initial begin
    my_packet pkt;
    pkt = new();
    for (int i = 0; i < 40; i++) begin
      if (pkt.randomize()) begin
        $display("The Converted binary code to Gray code in %0d iteration: b=%b g=%b", i, pkt.b, pkt.g);
      end else begin
        $display("Randomization failed.");
      end
    end
  end
endmodule
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Feb 26 22:08 2025
The Converted binary code to Gray code in 0 iteration: b=1110 g=1001
The Converted binary code to Gray code in 1 iteration: b=0101 g=0111
The Converted binary code to Gray code in 2 iteration: b=1000 g=1100
The Converted binary code to Gray code in 3 iteration: b=0100 g=0110
The Converted binary code to Gray code in 4 iteration: b=0010 g=0011
The Converted binary code to Gray code in 5 iteration: b=0101 g=0111
The Converted binary code to Gray code in 6 iteration: b=0001 g=0001
The Converted binary code to Gray code in 7 iteration: b=0011 g=0010
The Converted binary code to Gray code in 8 iteration: b=0100 g=0110
The Converted binary code to Gray code in 9 iteration: b=1110 g=1001
The Converted binary code to Gray code in 10 iteration: b=1111 g=1000
The Converted binary code to Gray code in 11 iteration: b=0010 g=0011
The Converted binary code to Gray code in 12 iteration: b=0011 g=0010
The Converted binary code to Gray code in 13 iteration: b=1110 g=1001
The Converted binary code to Gray code in 14 iteration: b=0110 g=0101
The Converted binary code to Gray code in 15 iteration: b=0100 g=0110
The Converted binary code to Gray code in 16 iteration: b=0110 g=0101
The Converted binary code to Gray code in 17 iteration: b=0100 g=0110
The Converted binary code to Gray code in 18 iteration: b=1100 g=1010
The Converted binary code to Gray code in 19 iteration: b=0100 g=0110
The Converted binary code to Gray code in 20 iteration: b=1110 g=1001
The Converted binary code to Gray code in 21 iteration: b=1100 g=1010
The Converted binary code to Gray code in 22 iteration: b=1000 g=1100
The Converted binary code to Gray code in 23 iteration: b=0001 g=0001
The Converted binary code to Gray code in 24 iteration: b=1101 g=1011
The Converted binary code to Gray code in 25 iteration: b=1111 g=1000
The Converted binary code to Gray code in 26 iteration: b=0110 g=0101
The Converted binary code to Gray code in 27 iteration: b=1000 g=1100
The Converted binary code to Gray code in 28 iteration: b=1100 g=1010
The Converted binary code to Gray code in 29 iteration: b=1001 g=1101
The Converted binary code to Gray code in 30 iteration: b=1100 g=1010
The Converted binary code to Gray code in 31 iteration: b=0111 g=0100
The Converted binary code to Gray code in 32 iteration: b=1001 g=1101
The Converted binary code to Gray code in 33 iteration: b=1000 g=1100
The Converted binary code to Gray code in 34 iteration: b=0111 g=0100
The Converted binary code to Gray code in 35 iteration: b=1111 g=1000
The Converted binary code to Gray code in 36 iteration: b=1111 g=1000
The Converted binary code to Gray code in 37 iteration: b=0110 g=0101
The Converted binary code to Gray code in 38 iteration: b=0110 g=0101
The Converted binary code to Gray code in 39 iteration: b=1100 g=1010
           V C S   S i m u l a t i o n   R e p o r t 


