`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HongTao
// Engineer: HongTao
// 
// Create Date: 2024/05/05 17:41:28
// Design Name: 
// Module Name: CLK_DIV_module
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


module CLK_DIV_module #(
    parameter     P_CLK_DIV_CNT = 2
)(
    input         i_clk,
    input         i_rst,
    output        o_clk_div
);
/*********************function*********************/

/*********************parmeter*********************/

/*********************port*************************/

/*********************mechine**********************/

/*********************reg**************************/
reg     ro_clk_div;
reg     r_cnt;
/*********************wire*************************/

/*********************component********************/

/*********************assign***********************/
assign  o_clk_div = ro_clk_div;
/*********************always***********************/
always @(posedge i_clk , posedge i_rst) begin
    if (i_rst)
        r_cnt <= 'd0;
    else if(r_cnt == (P_CLK_DIV_CNT >> 1 - 1))
        r_cnt <= 'd0;
    else
        r_cnt <= r_cnt + 1;
end

always @(posedge i_clk , posedge i_rst) begin
    if(i_rst)
        ro_clk_div <= 'd0;
    else if(r_cnt == (P_CLK_DIV_CNT >> 1 - 1))
        ro_clk_div <= ~ro_clk_div;
    else
        ro_clk_div <= ro_clk_div;
end    
endmodule
