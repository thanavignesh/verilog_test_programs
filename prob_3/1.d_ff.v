module d_ff (input d,en, output reg q);
  always @(*)begin
    if(en)
      q<=d;
    else
      q<=0;
    end
  endmodule
  
    

