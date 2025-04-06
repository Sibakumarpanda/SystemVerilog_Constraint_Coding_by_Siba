//63.WAC to generate random MAC address with valid formattings (6bytes,each 0-255).
class macaddress_packet;
  rand bit [7:0] mac_addr[6]; // 6-byte MAC address
  // Constraint to ensure each byte is within the valid range (0-255)
  constraint valid_mac_c1 {
             foreach(mac_addr[i]) 
                  mac_addr[i] inside {[0:255]};
              }
endclass

/*Format Specifiers: The format specifiers %02x are used to format each byte of the MAC address as a two-digit hexadecimal number. Here's what each part means:
%x: This specifier formats the number as a hexadecimal value.
02: This specifies that the number should be zero-padded to at least two digits. If the number is less than two digits, it will be padded with leading zeros. This ensures that each byte of the MAC address is displayed as two hexadecimal digits, even if the value is less than 16 (e.g., 0x0A instead of 0xA).
  
MAC Address Formatting: The MAC address is displayed in the standard format, with each byte separated by colons (:). This is a common representation for MAC addresses, making it easy to read and understand. */
  
module tb_top;
  initial begin
    macaddress_packet mac_addr_pkt = new();
    repeat(5) begin
    if (mac_addr_pkt.randomize()) begin
      $display("Generated MAC Address: %02x:%02x:%02x:%02x:%02x:%02x",
               mac_addr_pkt.mac_addr[0], mac_addr_pkt.mac_addr[1], mac_addr_pkt.mac_addr[2],
               mac_addr_pkt.mac_addr[3], mac_addr_pkt.mac_addr[4], mac_addr_pkt.mac_addr[5]);
    end 
    else begin
      $display("Failed to randomize MAC address");
    end
    end
  end
endmodule
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  6 05:39 2025
Generated MAC Address: 06:1b:7a:6a:7f:9e
Generated MAC Address: 2b:ee:56:e9:48:fe
Generated MAC Address: 25:5b:59:cf:a2:df
Generated MAC Address: bb:20:7c:9b:e9:4f
Generated MAC Address: 80:70:56:09:d6:41
           V C S   S i m u l a t i o n   R e p o r t 
