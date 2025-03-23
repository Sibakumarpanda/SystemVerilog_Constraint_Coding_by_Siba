//35.WAC to generate Arm strong numbers between 100-1000
//Example =153 = 1^3+5^3+3^3 , so its an Armstrong number
class armstrongnumber_packet;
   randc bit [9:0] arm_num;
   /*bit [3:0] digit1;
   bit [3:0] digit2;
   bit [3:0] digit3;*/
   
   constraint c1_range {arm_num >=1 ; arm_num <1000;}
   
  // Extract digits and apply Armstrong condition directly
  // To get Hundred Place -> arm_num/100
  // To get Tens Place -> (arm_num/10) %10
  // To get Units Place -> arm_num %10
  
  constraint c3_armstrong_constraint {   
                   ((arm_num / 100)**3 + ((arm_num / 10) % 10)**3 + (arm_num % 10)**3) == arm_num;
                    }

  function void display();
    $display("The Armstrong Number is: %0d",arm_num);
  endfunction
  
endclass :armstrongnumber_packet

module tb_top;
  
  initial begin
    armstrongnumber_packet pkt = new();
    repeat(10) begin
    if (pkt.randomize()) begin
        pkt.display();
    end else begin
      $display("Failed to generate an Armstrong number.");
    end
  end
end
  
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Mar 22 22:52 2025
The Armstrong Number is: 407
The Armstrong Number is: 371
The Armstrong Number is: 1
The Armstrong Number is: 153
The Armstrong Number is: 370
The Armstrong Number is: 153
The Armstrong Number is: 371
The Armstrong Number is: 407
The Armstrong Number is: 370
The Armstrong Number is: 1
           V C S   S i m u l a t i o n   R e p o r t 
  
endmodule :tb_top
