`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: HongTao
// 
// Create Date: 2024/05/05 00:34:39
// Design Name: 
// Module Name: count
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module count#(
    parameter                       P_CNT_WIDTH = 8
)(
    input                           i_clk,
    input                           i_rst,
    input                           i_en,
    output  [P_CNT_WIDTH - 1 : 0]   o_cnt,
    output                          o_led
);

reg  [P_CNT_WIDTH - 1 : 0]  ro_cnt;
reg                         ro_led;

assign o_cnt = ro_cnt;
assign o_led = ro_led;

always @(posedge i_clk , posedge i_rst) 
begin
    if (i_rst) begin
        ro_cnt <= 8'd0;
    end else begin
        ro_cnt <= ro_cnt + 1;
    end    
end

always @(posedge i_clk , posedge i_rst) 
begin
    if (i_rst) begin
        ro_led <= 'd0;
    end else if (ro_cnt == 8'd10) begin
        ro_led <= 'd1;
    end else begin
        ro_led <= 'd0;
    end
end

endmodule
