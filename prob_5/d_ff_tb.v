
module d_ff_tb;
  reg d=0;
  reg clk =0;
  wire q;
  d_ff_posclk dut(.d(d),.clk(clk),.q(q));
 always #7 d=~d; 
 always #5 clk=~clk;
endmodule
    
    
