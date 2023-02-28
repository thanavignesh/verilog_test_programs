
module fifo_tb;
  parameter depth = 1024;
  parameter width = 32;
  reg wen, ren, rst, clk;
  wire empty ,full;
  wire [width-1:0]dout;
  reg [width-1:0]din;
  integer i;
  fifo #( .depth(depth) ,.width(width)) dut(.din(din),.dout(dout),.wen(wen),.ren(ren),.clk(clk),.full(full),.empty(empty),.rst(rst));
  
 task write_data(input [width-1:0]datain);
    begin
      @(posedge clk);
      wen=1;
      din = datain;
      @(posedge clk);
      wen =0;
    end
  endtask
  
  task read_data();
    begin
      @(posedge clk);
      ren =1;
      $display("data_out = %d",dout);
      @(posedge clk);
      ren = 0;
    end
  endtask
  always #5 clk=~clk;
  initial begin
    clk=0;
    #2;
    ren=0; wen=0;
    rst =0 ;
    #5;
    write_data(1);
    #5;
    write_data(100);
    #5;
    write_data(200);
    #5;
    read_data();
    #5;
    read_data();
    #5;
    read_data();
$display($time, "\n SCENARIO 3");		
		for (i=0; i<depth; i=i+1) begin
		    write_data(i);
		end
		#5;
		for (i=0; i<depth; i=i+1) begin
			read_data();
		end
    #100 $finish;
  end
  

endmodule

      
  
