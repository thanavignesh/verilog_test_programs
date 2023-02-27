//continous assignment
module tristate( input d, input en ,output y);
  assign y = en ? d:0;
endmodule
