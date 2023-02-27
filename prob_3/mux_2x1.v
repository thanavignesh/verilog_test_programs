//continous asssignment
module mux_2x1(input a,c,sel, output b);
  assign b = sel ? a : c;
endmodule
