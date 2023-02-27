module left_shifter(output reg[3:0]Q,
input clk,reset
);
  reg [3:1]d=3'b001;
always@(posedge clk or reset )
begin
if(reset)
Q <= d;
else begin
Q <= Q<<1;
Q[0] <= Q[3];
end 
end 
endmodule
