
module mux_tb();
  reg a,c,sel;
  wire b;
  mux_beh dut(.a(a), .c(c), .b(b), .sel(sel));
  initial begin
    #5 sel =0;
    {a,c} = 2'b00;
    #5 sel =0;
    {a,c} =2'b01;
    #5 sel=1;
    {a,c} =2'b10;
    #5 sel =0;
    {a,c} = 2'b11;
    #5 sel =1;
    {a,c} = 2'b10;
    #5 sel =0;
  end
endmodule
    
