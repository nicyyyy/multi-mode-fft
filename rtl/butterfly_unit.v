`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCAS
// Engineer: Tsingyow
// 
// Create Date: 2023/01/23 15:06:50
// Design Name: 
// Module Name: butterfly_unit
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
// 采用booth编码乘法器，第一个周期计算乘积项，第二个周期求和
//////////////////////////////////////////////////////////////////////////////////


module butterfly_unit(
    input clk,
    input rst_n,
    input fft_start,
    input signed [15:0] xm1_re,
    input signed [15:0] xm1_im,
    input signed [15:0] xm2_re,
    input signed [15:0] xm2_im,
    input signed [15:0] w_re,
    input signed [15:0] w_im,

    output reg [15:0] xn1_re,
    output reg [15:0] xn1_im,
    output reg [15:0] xn2_re,
    output reg [15:0] xn2_im
    );

    // 计算4个乘积项
    wire signed [31:0] xm2_reXw_re,
                       xm2_reXw_im,
                       xm2_imXw_im,
                       xm2_imXw_re;
    // always@(posedge clk or negedge rst_n)
    // begin
    //     xm2_reXw_re = xm2_re*w_re;
    //     xm2_reXw_im = xm2_re*w_im;
    //     xm2_imXw_im = xm2_im*w_im;
    //     xm2_imXw_re = xm2_im*w_re;
    // end
    // mul_tc_16_16 mul_tc_16_16_init1(
    //     .a(xm2_re),
    //     .b(w_re),
    //     .product(xm2_reXw_re)
    // );

    // mul_tc_16_16 mul_tc_16_16_init2(
    //     .a(xm2_re),
    //     .b(w_im),
    //     .product(xm2_reXw_im)
    // );

    // mul_tc_16_16 mul_tc_16_16_init3(
    //     .a(xm2_im),
    //     .b(w_im),
    //     .product(xm2_imXw_im)
    // );

    // mul_tc_16_16 mul_tc_16_16_init4(
    //     .a(xm2_im),
    //     .b(w_re),
    //     .product(xm2_imXw_re)
    // );
    mult_16x16bit mult_16x16bit_init1 (
        .A(xm2_re),  // input wire [7 : 0] A
        .B(w_re),  // input wire [7 : 0] B
        .P(xm2_reXw_re)  // output wire [15 : 0] P
    );
    mult_16x16bit mult_16x16bit_init2 (
        .A(xm2_re),  // input wire [7 : 0] A
        .B(w_im),  // input wire [7 : 0] B
        .P(xm2_reXw_im)  // output wire [15 : 0] P
    );
    mult_16x16bit mult_16x16bit_init3 (
        .A(xm2_im),  // input wire [7 : 0] A
        .B(w_im),  // input wire [7 : 0] B
        .P(xm2_imXw_im)  // output wire [15 : 0] P
    );
    mult_16x16bit mult_16x16bit_init4 (
        .A(xm2_im),  // input wire [7 : 0] A
        .B(w_re),  // input wire [7 : 0] B
        .P(xm2_imXw_re)  // output wire [15 : 0] P
    );
    //输入延迟一个周期
    reg [15:0] xm1_re_r, xm1_im_r;
    always@(posedge clk or negedge rst_n)
    begin
        if(~rst_n)
        begin
            xm1_re_r <= 0;
            xm1_im_r <= 0;
        end
        else
        begin
            xm1_re_r <= xm1_re;
            xm1_im_r <= xm1_im;
        end
    end
    //求和
    always@(posedge clk or negedge rst_n)
    begin
        if(~rst_n)
        begin
            xn1_re = 16'dz;
            xn1_im = 16'dz;
            xn2_re = 16'dz;
            xn2_im = 16'dz;
        end
        else if(fft_start == 1)
        begin
            xn1_re = xm1_re + (xm2_reXw_re >>> 14) - (xm2_imXw_im >>> 14);
            xn1_im = xm1_im + (xm2_reXw_im >>> 14) + (xm2_imXw_re >>> 14);

            xn2_re = xm1_re - (xm2_reXw_re >>> 14) + (xm2_imXw_im >>> 14);
            xn2_im = xm1_im - (xm2_reXw_im >>> 14) - (xm2_imXw_re >>> 14);
        end
        else
        begin
            xn1_re = 16'dz;
            xn1_im = 16'dz;
            xn2_re = 16'dz;
            xn2_im = 16'dz;
        end
    end

    // function [15:0] Neg;
    //     input [15:0] a;
    //     begin
    //         if(a[15] == 0)
    //             Neg = {1'b1, (~a[14:0] + 1)};
    //         else
    //             Neg = {1'b0, (~a[14:0] + 1)};
    //     end
    // endfunction

endmodule
