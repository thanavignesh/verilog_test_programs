module tristate_behav(input d, input en, output reg y);
  always @(*) begin
    if(en)
      y=d;
    else
      y=1'bz;
    end
  endmodule
  
