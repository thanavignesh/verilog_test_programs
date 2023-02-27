
module d_ff_tb;
  reg d=0;
  reg en;
  wire q;
  d_ff dut(.d(d), .en(en) ,.q(q));
 always #7 d=~d; 
  initial begin
    #5 en =1;
    #5 en =0;
    #5 en =1;
    #5 en=0;
    #5 en =1;
  end
endmodule
    
    
