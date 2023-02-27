module and_tb;

reg a;
reg b;
wire c;

  and_gate dut(.a(a),.b(b),.c(c));

initial 
begin
	a = 1'b0;
	b = 1'b0;
  #5 {a,b} = 2'b11;
  #5 {a,b} = 2'b10;
end

initial #20 $finish;

endmodule
