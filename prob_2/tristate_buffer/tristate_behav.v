module tristate_behav(input d, input en, output reg y);
  always @(*) begin
    if(en)
      y=d;
    else
      y=0;
    end
  endmodule
  
