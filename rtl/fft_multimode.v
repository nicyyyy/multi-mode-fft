`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCAS
// Engineer: Tsingyow
// 
// Create Date: 2023/02/10 13:10:00
// Design Name: 
// Module Name: fft_multimode
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


module fft_multimode(
    input clk,
    input rst_n,
    input inv,
    input valid_in,
    input sop_in,
    input [1:0] np,
    input signed [15:0] x_re,
    input signed [15:0] x_im,
    output reg valid_out,
    output sop_out,
    output reg signed [15:0] y_re,
    output reg signed [15:0] y_im
    );
    reg [9:0] N;//点数
    reg [3:0] M;//级数
    always@(*)
    begin
        case(np)
        2'd0:
            begin
                N = 10'd64;
                M = 4'd6;
            end
        2'd1:
            begin
                N = 10'd128;
                M = 4'd7;
            end
        2'd2:
            begin
                N = 10'd256;
                M = 4'd8;
            end
        2'd3:
            begin
                N = 10'd512;
                M = 4'd9;
            end
        endcase
    end
    //缓存模块
    wire [8:0] wr_addr1;
    wire [8:0] wr_addr2;
    wire [8:0] rd_addr1;
    wire [8:0] rd_addr2;
    wire [15:0] xn1_re_in;
    wire [15:0] xn1_im_in;
    wire [15:0] xn2_re_in;
    wire [15:0] xn2_im_in;

    wire [15:0] xm1_re_out;
    wire [15:0] xm1_im_out;
    wire [15:0] xm2_re_out;
    wire [15:0] xm2_im_out;
    wire wr_en;
    wire rd_en;
    sram_2x16x512bit sram_2x16x512bit_init(
        .clk(clk),
        .rst_n(rst_n),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .wr_addr1(wr_addr1),
        .wr_addr2(wr_addr2),
        .rd_addr1(rd_addr1),
        .rd_addr2(rd_addr2),
        .xn1_re_in(xn1_re_in),
        .xn1_im_in(xn1_im_in),
        .xn2_re_in(xn2_re_in),
        .xn2_im_in(xn2_im_in),
        .xm1_re_out(xm1_re_out),
        .xm1_im_out(xm1_im_out),
        .xm2_re_out(xm2_re_out),
        .xm2_im_out(xm2_im_out)
    );

    wire wn_rd_en;
    wire [7:0] rd_addr_wn;
    wire [15:0] w_re,
                w_im;
    // sram_wn2x16x32bit sram_wn2x16x32bit_init(
    //     .clk(clk),
    //     .rst_n(rst_n),
    //     .wn_rd_en(wn_rd_en),
    //     .rd_addr_wn(rd_addr_wn),
    //     .w_re(w_re),
    //     .w_im(w_im)
    // );
    rom_wn_re16x256bit rom_wn_re16x256bit_init (
        .a(rd_addr_wn),      // input wire [7 : 0] a
        .spo(w_re)  // output wire [15 : 0] spo
    );

    rom_wn_im16x256bit rom_wn_im16x256bit_init (
        .a(rd_addr_wn),      // input wire [7 : 0] a
        .spo(w_im)  // output wire [15 : 0] spo
    );
    //输入倒序
    wire resort_complete;
    in_resort in_resort_init(
        .clk(clk),
        .rst_n(rst_n),
        .x_re(x_re),
        .x_im(x_im),
        .sop_in(sop_in),
        .inv(inv),
        .N(N),
        .x_re_resorted(xn1_re_in),
        .x_im_resorted(xn1_im_in),
        .addr_resort(wr_addr1),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .resort_complete(resort_complete)
    );

    //计算fft
    wire fft_complete;
    fft fft_init(
        .clk(clk),
        .rst_n(rst_n),
        .resort_complete(resort_complete),
        .xm1_re(xm1_re_out),
        .xm1_im(xm1_im_out),
        .xm2_re(xm2_re_out),
        .xm2_im(xm2_im_out),
        .w_re(w_re),
        .w_im(w_im),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .M(M),
        .N(N),
        .inv(inv),
        .wr_addr1(wr_addr1),
        .wr_addr2(wr_addr2),
        .rd_addr1(rd_addr1),
        .rd_addr2(rd_addr2),
        .wn_rd_en(wn_rd_en),
        .rd_addr_wn(rd_addr_wn),
        .xn1_re(xn1_re_in),
        .xn1_im(xn1_im_in),
        .xn2_re(xn2_re_in),
        .xn2_im(xn2_im_in),
        .fft_complete(fft_complete)
    );

    //结果输出
    reg dataout_start;
    reg [9:0] cnt_n;

    always@(posedge clk or negedge rst_n)
    begin
        if(~rst_n)
            dataout_start <= 0;
        else if(fft_complete == 1)
            dataout_start <= ~dataout_start;
        else if(cnt_n == N - 1)
            dataout_start <= ~dataout_start;
        else
            dataout_start <= dataout_start;
    end

    always@(posedge clk or negedge rst_n)
    begin
        if(~rst_n)
            cnt_n <= 0;
        else if(dataout_start == 1)
        begin
            if(cnt_n < N - 1)
                cnt_n <= cnt_n + 1;
            else
                cnt_n <= 0;
        end
        else
            cnt_n <= 0;
    end

    reg [8:0] addr_out;
    reg rd_en_out;
    always@(posedge clk or negedge rst_n)
    begin
        if(~rst_n)
        begin
            addr_out = 9'dz;
            rd_en_out = 1'dz;
        end
        else if(dataout_start)
        begin
            addr_out = cnt_n;
            rd_en_out = 1'd1;
        end
        else
        begin
            addr_out = 9'dz;
            rd_en_out = 1'dz;
        end
    end
    assign rd_addr1 = addr_out;
    assign rd_en = rd_en_out;
    // assign y_re = (dataout_start == 1) ? ((inv == 0) ? xm1_re_out : xm1_re_out >>> M) : 0;
    // assign y_im = (dataout_start == 1) ? ((inv == 0) ? xm1_im_out : (-xm1_im_out) >>> M) : 0;
    // assign valid_out = dataout_start;
    assign sop_out = (dataout_start == 1 && cnt_n[5:0] == 0) ? 1 : 0;

    always@(posedge clk)
    begin
        valid_out <= dataout_start;
    end
    always@(*)
    begin
        if(dataout_start == 1)
        begin
            if(inv == 0)
            begin
                y_re = xm1_re_out;
                y_im = xm1_im_out;
            end
            else
            begin
                y_re = xm1_re_out ;
                y_im = (-xm1_im_out) ;
            end
        end
        else
        begin
            y_re = 0;
            y_im = 0;
        end
    end
endmodule
