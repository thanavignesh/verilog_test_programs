
module d_ff_rst_tb;
  reg d=0;
  reg en,rst;
  wire q;
  d_ff_rst dut(.d(d),.rst(rst),.en(en) ,.q(q));
 always #7 d=~d; 
  initial begin
    #5 rst =1;
       en =0;
    #5 rst =0;
       en =1;
    #5 en =0;
    #5 en =1;
    #5 en=0;
    #5 rst =1;
    #5 en =1;
  end
endmodule
    
    
