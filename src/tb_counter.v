//----------------------------------------------------------// 
`timescale 1ns/1ns 
module tb_counter; 
// 
localparam DW = 5;
reg clk;
reg rst;
wire [3:0] count;
//
always #10 clk = ~clk;
//
always@(posedge clk) begin
  $write("Time: %t, ClK: %b, RST: %b, COUNT: %b \n", $time, clk, rst, count);  
end // always@(posedge clk) begin
//
initial begin
  clk = 1'b0;
  rst = 1'b1;
  #100;
  rst = 1'b0;
  #1000 $stop;
end // initial begin 
//
counter dut
   (.clk(clk),
    .reset(rst),
    .count(count)
   ); 
// 
endmodule 
//--------------------------------------------------------// 
