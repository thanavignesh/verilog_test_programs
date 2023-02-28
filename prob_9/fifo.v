
module fifo #(parameter depth = 1024 ,width = 32)(din,dout,wen,ren,rst,clk,full,empty);
  input [width-1:0] din;
  input wen,ren,rst;
  input clk;
  output reg [width-1:0]dout;
  output empty,full;
  
  localparam dep_log = $clog2(depth);
  reg [width-1:0]fifo[0:depth-1];
  
  reg [dep_log:0]wr_poi=0;
  reg [dep_log:0]re_poi=0;
  
  always @(posedge clk) begin
    if (rst)
      wr_poi <=0;
    else if(wen && !full)
      wr_poi <= wr_poi+1;
    end  
  always @(posedge clk) begin
    if (rst)
      re_poi <=0;
    else if(ren && !empty)
      re_poi <= re_poi+1;
    end
    
    assign empty = (re_poi == wr_poi);
    assign full = (re_poi =={~wr_poi[dep_log],wr_poi[dep_log-1:0]});
    
  always @(posedge clk) begin
    if(wen && !full)
      fifo[wr_poi[dep_log-1:0]] <=  din;
    end
    
    always @(posedge clk) begin
      if(rst)
        dout<=0;
    else if(ren && !empty)
      dout<=fifo[re_poi[dep_log-1:0]];
    end
    
    
  endmodule

    
    
      
