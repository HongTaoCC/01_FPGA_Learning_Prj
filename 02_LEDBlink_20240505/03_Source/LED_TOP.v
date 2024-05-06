`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/05 17:41:28
// Design Name: 
// Module Name: LED_TOP
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


module LED_TOP(
    input           i_clk,
    output [1:0]    o_led
);

wire  w_clk_5MHz;
wire  w_clk_locked;
wire  w_clk_div;

CLK_PLL CLK_PLL_U0(
    // Clock out ports
    .clk_out1       (w_clk_5MHz     ),                  // output clk_out1
    // Status and control signals
    .locked         (w_clk_locked   ),                  // 锁相环分频稳定后信号拉高，可以做同步复位信号
    // Clock in ports
    .clk_in1        (i_clk          )                   // input clk_in1
);

CLK_DIV_module#(
    .P_CLK_DIV_CNT   (2             )                  
)CLK_DIV_module_U0
(
    .i_clk           (w_clk_5MHz    ),
    .i_rst           (~w_clk_locked ),
    .o_clk_div       (w_clk_div     )
);


LED_Driver#(
    .P_LED_NUMBER    (1             ),   
    .P_LED_CNT       (1000          ),
    .P_LED_ON        (1             )          
)LED_Driver_U0
(
    .i_clk           (w_clk_div     ),
    .i_rst           (~w_clk_locked ),
    .o_led           (o_led[0]      )
);



endmodule
