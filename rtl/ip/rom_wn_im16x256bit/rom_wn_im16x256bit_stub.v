// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Feb 12 10:58:40 2023
// Host        : DESKTOP-8AOC8LP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/my_verilog/adv/fft/fft_64/fft_64.srcs/sources_1/ip/rom_wn_im16x256bit/rom_wn_im16x256bit_stub.v
// Design      : rom_wn_im16x256bit
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *)
module rom_wn_im16x256bit(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[7:0],spo[15:0]" */;
  input [7:0]a;
  output [15:0]spo;
endmodule
