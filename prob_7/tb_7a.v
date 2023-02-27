
module tb_7a;
  reg d,enable;
  reg clk=0;
  wire out,q;
d_ff_feedback dut( .d(d),.clk(clk),.enable(enable),.out(out),.q(q)); 
   always #5 clk = ~clk;
   initial begin
    enable=0;
       d=1;
     #5 enable=1;
     #5 d=1;
     #5 d=0;
     #5 enable =0;
     #5 d=0;
     #5 d=1;
     #5 enable=1;
     #5 d=0;
     
   end
 endmodule
 
