//27.WAC to generate unique element in a 2-dimensional array
class my_packet;   
  rand int a[3][3]; // A 3x3 two-dimensional array have 9 elements
  // Constraint to ensure all elements in the 2D array are unique
  constraint unique_elements { 
                               foreach (a[i,j]) 
                               {
                                  foreach (a[k,l]) 
                                   {
                                     if ((i != k) || (j != l)) {
                                          a[i][j] != a[k][l];
                                      }
                                    }
                                }
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
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Feb 26 21:36 2025
The Generated Pattern in 0 iteration : a='{'{-701678077, 1694143526, -1245030173}, '{-1338135050, 202378142, -1050444032}, '{986841053, 1583359354, -1464208958}} 
The Generated Pattern in 1 iteration : a='{'{1630365007, -1876799389, -1110592550}, '{703952813, 1364622365, -105642380}, '{-869692429, -1941622402, 2116911285}} 
The Generated Pattern in 2 iteration : a='{'{-530993662, 237195836, 496943917}, '{765121299, 12743079, 371147596}, '{1589938306, -1999524432, 1884382541}} 
The Generated Pattern in 3 iteration : a='{'{1282343961, -1684751705, 1125050502}, '{1811023140, 1741343822, -15840345}, '{705641610, -1939833372, -997865695}} 
The Generated Pattern in 4 iteration : a='{'{1240233607, 1286117408, -1203994117}, '{406525538, 1045335715, -244578199}, '{1159956138, 949344350, 791881016}} 
The Generated Pattern in 5 iteration : a='{'{2037810169, -306060566, -1590578293}, '{2007335437, -556929611, -1291922474}, '{492290710, -1433945930, 2023525451}} 
The Generated Pattern in 6 iteration : a='{'{259067906, 1336727041, 1900955583}, '{-1890390013, 1725728917, 1043763578}, '{-935477581, 2081013382, 2087930761}} 
The Generated Pattern in 7 iteration : a='{'{2132857734, 2018089043, -1135070736}, '{-681368359, -1047061671, -32543740}, '{-1166302020, 1348785094, -2106037796}} 
The Generated Pattern in 8 iteration : a='{'{755858225, -1519209250, 455696212}, '{661745804, 1574504136, 292453406}, '{-136850297, -971290445, -52082871}} 
The Generated Pattern in 9 iteration : a='{'{-1546160990, 1046508106, -968673575}, '{-235061209, 164721366, -1559800735}, '{1016160923, 2034536372, 190089005}} 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns                                     
