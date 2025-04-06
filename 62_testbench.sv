//62. WAC to generate a packet with addr,data, id ensuring addr%4=0
class Packet;
  rand bit [31:0] addr; // 32-bit address
  rand bit [31:0] data; // 32-bit data
  rand bit [7:0] id;    // 8-bit id
  // Constraint to ensure addr is a multiple of 4
  constraint addr_aligned {
    addr % 4 == 0;
     }
endclass

// Example usage
module tb_top;
  initial begin
    Packet pkt = new();
    repeat(5) begin
    if (pkt.randomize()) begin
      $display("Generated Packet: Addr: %0d,Data: %0d,ID: %0d", pkt.addr,pkt.data,pkt.id);      
    end else begin
      $display("Failed to randomize packet");
    end
    end
  end
endmodule
//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  6 05:25 2025
Generated Packet: Addr: 3081881812,Data: 409176739,ID: 143
Generated Packet: Addr: 2299776976,Data: 2864138198,ID: 151
Generated Packet: Addr: 2577409432,Data: 1575644161,ID: 222
Generated Packet: Addr: 2415810984,Data: 460882633,ID: 79
Generated Packet: Addr: 4067818500,Data: 114263597,ID: 159
           V C S   S i m u l a t i o n   R e p o r t 
