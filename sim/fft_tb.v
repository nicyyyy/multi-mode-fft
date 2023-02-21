`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCAS
// Engineer: Tsingyow
// 
// Create Date: 2023/02/10 20:54:34
// Design Name: 
// Module Name: fft_tb
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


module fft_tb(

    );
    reg clk;
    reg rst_n;
    reg inv;
    reg valid_in;
    reg sop_in;
    reg [15:0] x_re;
    reg [15:0] x_im;
    reg [1:0] np;
    wire valid_out;
    wire sop_out;
    wire [15:0] y_re;
    wire [15:0] y_im;

    parameter period = 200;
    parameter N = 64;//点数

    reg [15:0] mem_re[N - 1:0];
    reg [15:0] mem_im[N - 1:0];
    fft_multimode fft_multimode_tb(
        .clk(clk),
        .rst_n(rst_n),
        .inv(inv),
        .np(np),
        .valid_in(valid_in),
        .sop_in(sop_in),
        .x_re(x_re),
        .x_im(x_im),
        .valid_out(valid_out),
        .sop_out(sop_out),
        .y_re(y_re),
        .y_im(y_im)
    );

    integer fdyre,fdyim;
    integer cnt;
    integer stop_flag;
    //读入数据
    initial begin
        clk = 0;
        rst_n = 0;
        sop_in = 0;
        valid_in = 0;
        inv = 0;
        cnt = 0;
        stop_flag = 0;
        case(N)
        32'd64:  np = 2'b00;
        32'd128: np = 2'b01;
        32'd256: np = 2'b10;
        32'd512: np = 2'b11;
        endcase
        $readmemh("E:/my_verilog/adv/fft/matlab/x_re64.txt",mem_re);
        $readmemh("E:/my_verilog/adv/fft/matlab/x_im64.txt",mem_im);
        #(period);

        rst_n = 1;
        #(period);

        valid_in = 1;
        while(cnt < N)
        begin
            if(cnt == 0)
                sop_in = 1;
            else
                sop_in = 0;
            x_re = mem_re[cnt];
            x_im = mem_im[cnt];
            cnt = cnt + 1;
            #(period);
        end

        valid_in = 0;
        stop_flag = 1;
    end

    //写计算结果
    integer cnt2;
    initial
    begin
        fdyre = $fopen("E:/my_verilog/adv/fft/matlab/y_re_fft64.txt","wb");
        fdyim = $fopen("E:/my_verilog/adv/fft/matlab/y_im_fft64.txt","wb");
        cnt2 = 0;
        while(1)
        begin
            if(valid_out == 1)
            begin
                $fwrite(fdyre,"%04x",y_re);
                $fwrite(fdyim,"%04x",y_im);
                cnt2 = cnt2 + 1;
            end
            else if(valid_out == 0 && stop_flag == 1 && cnt2 == N)
            begin
                $fclose(fdyre);
                $fclose(fdyim);
                $stop;
            end
            #(period);
        end
    end
    always
        #(period/2) clk = ~clk;
endmodule
