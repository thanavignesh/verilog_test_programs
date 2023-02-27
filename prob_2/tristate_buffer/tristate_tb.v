
module tristate_tb();
  reg d,en;
  wire y;
  tristate_behav dut (.d(d), .en(en), .y(y));
  initial begin
    en=0;
    d=1;
    #5 en=1;
    #5 d=1;
    #5 d=0;
    #5 en=0;
    #5 d=1;
    #5 en=1;
    #5 d=1;
  end
endmodule

