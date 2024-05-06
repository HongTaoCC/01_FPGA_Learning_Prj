`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HongTao
// Engineer: HongTao
// 
// Create Date: 2024/05/05 17:41:28
// Design Name: 
// Module Name: LED_Driver
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


module LED_Driver#(
    parameter P_LED_NUMBER = 1,     //LED个数
    parameter P_LED_CNT    = 1000,  //LED反转时间1000ms
    parameter P_LED_ON     = 1      //LED点亮电平
) (
    input                           i_clk,
    input                           i_rst,
    output [P_LED_NUMBER - 1 : 0]   o_led
);
/*********************function*********************/

/*********************parmeter*********************/

/*********************port*************************/

/*********************mechine**********************/

/*********************reg**************************/
reg [P_LED_NUMBER - 1 : 0] ro_led;
reg [15 : 0]               r_cnt;
reg                        r_LED_en;                 
/*********************wire*************************/

/*********************component********************/

/*********************assign***********************/
assign o_led = ro_led; 
/*********************always***********************/
always @(posedge i_clk , posedge i_rst) begin
    if (i_rst) begin
        r_cnt      <= 'd0;
        r_LED_en   <= 'd0;        
    end else if(r_cnt == P_LED_CNT - 1) begin
            r_cnt      <= 'd0;
            r_LED_en   <= ~r_LED_en;
    end else begin
        r_cnt      <= r_cnt + 1;
        r_LED_en   <= r_LED_en;
    end
end

always @(posedge i_clk , posedge i_rst) begin
    if(i_rst)
        ro_led <= 'd0;
    else if (r_LED_en == 'd1)
        ro_led <= ~ro_led;
    else
        ro_led <= ro_led;
end
endmodule
