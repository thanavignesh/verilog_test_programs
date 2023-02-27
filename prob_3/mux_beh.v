
module mux_beh(input a,c,sel, output reg b);
  always @(*) begin
    case (sel)
      1'b0 : b = c;
      1'b1 : b = a;
    endcase
  end  
endmodule
  
