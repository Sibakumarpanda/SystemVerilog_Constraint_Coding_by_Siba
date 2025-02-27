//26.WAC to generate Floating-point number in between 1-10
/*Key points about floating point format specifiers in System Verilog:
"%f": Prints a floating-point number in decimal format. 
"%e": Prints a floating-point number in exponential notation. 
"%g": Prints a floating-point number in either decimal or exponential format, depending on the magnitude of the number (a more compact representation) */
class my_packet;
  rand real a; // 
  constraint c1 {a inside {[1:20]};
                 }     
endclass 

module tb_top;  
  initial begin   
    my_packet pkt;
    pkt=new();   
    for (int i=0; i<30;i++) begin
      pkt.randomize();
      $display("The Generated Pattern in %0d iteration : a=%0f",i,pkt.a); 
    end 
  end  
endmodule 
//NOTE- real data type is supported in Simens questa Tool directly - so i have used Questa tool to run this example
//When i am running with Synposys tool getting below messgae/error. so we need to add  " -xlrm floating_pnt_constraint " option in compile option in right hand side of eda playground and then run ,
//we can get the result

/*Error-[NYI-CSTR-CIREAL] Unsuported use of real/shortreal/realtime variable
testbench.sv, 11
$unit, "a"
  Variable 'a' is of real/shortreal/realtime type. Support for variables of 
  real/shortreal/realtime type is disabled, by default.
  You may enable support for variables of real/shortreal/realtime type by 
  adding VCS compile time option: -xlrm floating_pnt_constraint */

//Output
run -all
# The Generated Pattern in 0 iteration : a=1.432118
# The Generated Pattern in 1 iteration : a=1.109216
# The Generated Pattern in 2 iteration : a=6.376924
# The Generated Pattern in 3 iteration : a=3.564228
# The Generated Pattern in 4 iteration : a=1.595388
# The Generated Pattern in 5 iteration : a=1.620578
# The Generated Pattern in 6 iteration : a=1.051813
# The Generated Pattern in 7 iteration : a=6.280751
# The Generated Pattern in 8 iteration : a=1.360689
# The Generated Pattern in 9 iteration : a=1.901455
# The Generated Pattern in 10 iteration : a=1.372421
# The Generated Pattern in 11 iteration : a=1.760594
# The Generated Pattern in 12 iteration : a=1.152927
# The Generated Pattern in 13 iteration : a=9.681645
# The Generated Pattern in 14 iteration : a=6.685788
# The Generated Pattern in 15 iteration : a=4.644627
# The Generated Pattern in 16 iteration : a=2.000922
# The Generated Pattern in 17 iteration : a=15.252330
# The Generated Pattern in 18 iteration : a=2.811302
# The Generated Pattern in 19 iteration : a=14.456505
# The Generated Pattern in 20 iteration : a=1.885096
# The Generated Pattern in 21 iteration : a=17.583759
# The Generated Pattern in 22 iteration : a=13.686850
# The Generated Pattern in 23 iteration : a=2.725158
# The Generated Pattern in 24 iteration : a=13.840217
# The Generated Pattern in 25 iteration : a=1.911595
# The Generated Pattern in 26 iteration : a=9.705073
# The Generated Pattern in 27 iteration : a=15.179552
# The Generated Pattern in 28 iteration : a=6.343016
# The Generated Pattern in 29 iteration : a=10.159384
# exit
# End time: 21:31:44 on Feb 26,2025, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
End time: 21:31:44 on Feb 26,2025, Elapsed time: 0:00:02
*** Summary *********************************************
    qrun: Errors:   0, Warnings:   0
    vlog: Errors:   0, Warnings:   2
    vopt: Errors:   0, Warnings:   4
    vsim: Errors:   0, Warnings:   0
  Totals: Errors:   0, Warnings:   6
