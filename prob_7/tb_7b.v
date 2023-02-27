module tb_7b;
  reg d,en;
  reg clk=0;
  wire q;
d_ff_gate dut(.d(d),.clk(clk),.en(en),.q(q));
always #5 clk =~clk;
initial begin
  d=1;
  en=1;
  #5 d=0;
  #5 en=0;
  #5 d=1;
  #5 en=0;
  #5 d=0;
  #5 en =1;
  #5 d=1;
end
endmodule

   
