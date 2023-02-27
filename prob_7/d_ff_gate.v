module d_ff_gate(input d,input clk, input en, output reg q);
  wire gclk;
 assign  gclk = en & clk;
  always @(posedge gclk)
  begin
    q <=d;
  end
endmodule
