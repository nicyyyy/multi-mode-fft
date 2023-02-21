`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/10 13:15:32
// Design Name: 
// Module Name: in_resort
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
// 输出延迟一个周期，64个周期后产生一个周期的完成信号
//////////////////////////////////////////////////////////////////////////////////


module in_resort(
    input clk,
    input rst_n,
    input signed [15:0] x_re,
    input signed [15:0] x_im,
    input sop_in,
    input inv,
    input [9:0] N,
    output reg signed [15:0] x_re_resorted,
    output reg signed [15:0] x_im_resorted,

    output reg [8:0] addr_resort,
    output reg wr_en,
    output reg rd_en,
    output reg resort_complete
    );
    reg [8:0] cnt;
    reg resort_start;//开始输入重新排序
    //输入延迟一个周期
    reg [15:0] x_re_r, x_im_r;
    always@(posedge clk or negedge rst_n)
    begin
        if(~rst_n)
        begin
            x_re_r <= 0;
            x_im_r <= 0;
        end
        else
        begin
            x_re_r <= x_re;
            x_im_r <= x_im;
        end
    end

    always@(posedge clk or negedge rst_n)
    begin
        if(~rst_n)
            resort_start <= 0;
        else if(sop_in == 1)
            resort_start <= ~resort_start;
        else if(cnt == N - 1)
            resort_start <= ~resort_start;
        else;
    end

    always@(posedge clk or negedge rst_n)
    begin
        if(~rst_n)
            cnt <= 0;
        else if(resort_start == 1)
            cnt <=  cnt + 1;
        else
            cnt <= 0;
    end

    always@(posedge clk or negedge rst_n)
    begin
        if(~rst_n)
        begin
            x_re_resorted <= 16'dz;
            x_im_resorted <= 16'dz;
            addr_resort <= 9'dz;
            wr_en <= 1'dz;
            rd_en <= 1'dz;
        end
        else if(resort_start == 1)
        begin
            x_re_resorted <= x_re_r;
            x_im_resorted <= (inv == 0) ? x_im_r : (-x_im_r);
            addr_resort <= fliplr(cnt,N);
            wr_en <= 1'd1;
            rd_en <= 1'd0;
        end
        else
         begin
            x_re_resorted <= 16'dz;
            x_im_resorted <= 16'dz;
            addr_resort <= 9'dz;
            wr_en <= 1'dz;
            rd_en <= 1'dz;
        end
    end

    always@(posedge clk or negedge rst_n)
    begin
        if(~rst_n)
            resort_complete <= 0;
        else if(cnt == N - 1)
            resort_complete <= 1;
        else
            resort_complete <= 0;
    end

    function [8:0] fliplr;
        input [8:0] bin;
        input [9:0] N;

        case(N)
        10'd64:  fliplr = {bin[8:6],bin[0],bin[1],bin[2],bin[3],bin[4],bin[5]};
        10'd128: fliplr = {bin[8:7],bin[0],bin[1],bin[2],bin[3],bin[4],bin[5],bin[6]};
        10'd256: fliplr = {bin[8],bin[0],bin[1],bin[2],bin[3],bin[4],bin[5],bin[6],bin[7]};
        10'd512: fliplr = {bin[0],bin[1],bin[2],bin[3],bin[4],bin[5],bin[6],bin[7],bin[8]};
        endcase
    endfunction
endmodule
