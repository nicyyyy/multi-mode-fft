// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Feb 12 10:57:36 2023
// Host        : DESKTOP-8AOC8LP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/my_verilog/adv/fft/fft_64/fft_64.srcs/sources_1/ip/rom_wn_re16x256bit/rom_wn_re16x256bit_sim_netlist.v
// Design      : rom_wn_re16x256bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_wn_re16x256bit,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module rom_wn_re16x256bit
   (a,
    spo);
  input [7:0]a;
  output [15:0]spo;

  wire [7:0]a;
  wire [15:0]spo;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "8" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "256" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "rom_wn_re16x256bit.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  rom_wn_re16x256bit_dist_mem_gen_v8_0_12 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "8" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "256" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "kintex7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "rom_wn_re16x256bit.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "16" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_12" *) 
module rom_wn_re16x256bit_dist_mem_gen_v8_0_12
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [7:0]a;
  input [15:0]d;
  input [7:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [15:0]spo;
  output [15:0]dpo;
  output [15:0]qspo;
  output [15:0]qdpo;

  wire \<const0> ;
  wire [7:0]a;
  wire [15:0]spo;

  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  rom_wn_re16x256bit_dist_mem_gen_v8_0_12_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_12_synth" *) 
module rom_wn_re16x256bit_dist_mem_gen_v8_0_12_synth
   (spo,
    a);
  output [15:0]spo;
  input [7:0]a;

  wire [7:0]a;
  wire [15:0]spo;

  rom_wn_re16x256bit_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module rom_wn_re16x256bit_rom
   (spo,
    a);
  output [15:0]spo;
  input [7:0]a;

  wire [7:0]a;
  wire [15:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[0]_INST_0_i_3_n_0 ;
  wire \spo[0]_INST_0_i_4_n_0 ;
  wire \spo[0]_INST_0_i_5_n_0 ;
  wire \spo[0]_INST_0_i_6_n_0 ;
  wire \spo[10]_INST_0_i_1_n_0 ;
  wire \spo[10]_INST_0_i_2_n_0 ;
  wire \spo[10]_INST_0_i_3_n_0 ;
  wire \spo[10]_INST_0_i_4_n_0 ;
  wire \spo[10]_INST_0_i_5_n_0 ;
  wire \spo[10]_INST_0_i_6_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[11]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_3_n_0 ;
  wire \spo[11]_INST_0_i_4_n_0 ;
  wire \spo[11]_INST_0_i_5_n_0 ;
  wire \spo[11]_INST_0_i_6_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_3_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_4_n_0 ;
  wire \spo[1]_INST_0_i_5_n_0 ;
  wire \spo[1]_INST_0_i_6_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[2]_INST_0_i_4_n_0 ;
  wire \spo[2]_INST_0_i_5_n_0 ;
  wire \spo[2]_INST_0_i_6_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_4_n_0 ;
  wire \spo[3]_INST_0_i_5_n_0 ;
  wire \spo[3]_INST_0_i_6_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_4_n_0 ;
  wire \spo[4]_INST_0_i_5_n_0 ;
  wire \spo[4]_INST_0_i_6_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_4_n_0 ;
  wire \spo[5]_INST_0_i_5_n_0 ;
  wire \spo[5]_INST_0_i_6_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[6]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_4_n_0 ;
  wire \spo[6]_INST_0_i_5_n_0 ;
  wire \spo[6]_INST_0_i_6_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_3_n_0 ;
  wire \spo[7]_INST_0_i_4_n_0 ;
  wire \spo[7]_INST_0_i_5_n_0 ;
  wire \spo[7]_INST_0_i_6_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[8]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_3_n_0 ;
  wire \spo[8]_INST_0_i_4_n_0 ;
  wire \spo[8]_INST_0_i_5_n_0 ;
  wire \spo[8]_INST_0_i_6_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;
  wire \spo[9]_INST_0_i_3_n_0 ;
  wire \spo[9]_INST_0_i_4_n_0 ;
  wire \spo[9]_INST_0_i_5_n_0 ;
  wire \spo[9]_INST_0_i_6_n_0 ;

  MUXF8 \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(\spo[0]_INST_0_i_2_n_0 ),
        .O(spo[0]),
        .S(a[6]));
  MUXF7 \spo[0]_INST_0_i_1 
       (.I0(\spo[0]_INST_0_i_3_n_0 ),
        .I1(\spo[0]_INST_0_i_4_n_0 ),
        .O(\spo[0]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[0]_INST_0_i_2 
       (.I0(\spo[0]_INST_0_i_5_n_0 ),
        .I1(\spo[0]_INST_0_i_6_n_0 ),
        .O(\spo[0]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hF06459C3B6C5F000)) 
    \spo[0]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h82FC508641A60D8B)) 
    \spo[0]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE4A7F9DCEF0B59ED)) 
    \spo[0]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF3CD062FCF995502)) 
    \spo[0]_INST_0_i_6 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[0]_INST_0_i_6_n_0 ));
  MUXF8 \spo[10]_INST_0 
       (.I0(\spo[10]_INST_0_i_1_n_0 ),
        .I1(\spo[10]_INST_0_i_2_n_0 ),
        .O(spo[10]),
        .S(a[6]));
  MUXF7 \spo[10]_INST_0_i_1 
       (.I0(\spo[10]_INST_0_i_3_n_0 ),
        .I1(\spo[10]_INST_0_i_4_n_0 ),
        .O(\spo[10]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[10]_INST_0_i_2 
       (.I0(\spo[10]_INST_0_i_5_n_0 ),
        .I1(\spo[10]_INST_0_i_6_n_0 ),
        .O(\spo[10]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hF1FBF31BF15BFB18)) 
    \spo[10]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44CDD9BB3331155D)) 
    \spo[10]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h557726443332CDD9)) 
    \spo[10]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0A5D0A001F005F10)) 
    \spo[10]_INST_0_i_6 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[10]_INST_0_i_6_n_0 ));
  MUXF8 \spo[11]_INST_0 
       (.I0(\spo[11]_INST_0_i_1_n_0 ),
        .I1(\spo[11]_INST_0_i_2_n_0 ),
        .O(spo[11]),
        .S(a[6]));
  MUXF7 \spo[11]_INST_0_i_1 
       (.I0(\spo[11]_INST_0_i_3_n_0 ),
        .I1(\spo[11]_INST_0_i_4_n_0 ),
        .O(\spo[11]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[11]_INST_0_i_2 
       (.I0(\spo[11]_INST_0_i_5_n_0 ),
        .I1(\spo[11]_INST_0_i_6_n_0 ),
        .O(\spo[11]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h9797977797379774)) 
    \spo[11]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5A4A4A4AFDFDFDF5)) 
    \spo[11]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6622662333111115)) 
    \spo[11]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h03030303073C3C3C)) 
    \spo[11]_INST_0_i_6 
       (.I0(a[0]),
        .I1(a[7]),
        .I2(a[5]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[11]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \spo[12]_INST_0 
       (.I0(\spo[12]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[12]_INST_0_i_2_n_0 ),
        .I3(a[4]),
        .I4(\spo[12]_INST_0_i_3_n_0 ),
        .O(spo[12]));
  LUT6 #(
    .INIT(64'h000505050A180A50)) 
    \spo[12]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[7]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBFBFBF57575777)) 
    \spo[12]_INST_0_i_2 
       (.I0(a[7]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFD55555FFFFFFFC)) 
    \spo[12]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h033B333F033B000C)) 
    \spo[13]_INST_0 
       (.I0(\spo[13]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(a[5]),
        .I3(a[7]),
        .I4(a[4]),
        .I5(\spo[13]_INST_0_i_2_n_0 ),
        .O(spo[13]));
  LUT3 #(
    .INIT(8'h07)) 
    \spo[13]_INST_0_i_1 
       (.I0(a[1]),
        .I1(a[2]),
        .I2(a[3]),
        .O(\spo[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h557FFFFFFFFFFFFC)) 
    \spo[13]_INST_0_i_2 
       (.I0(a[7]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FE11FE00)) 
    \spo[14]_INST_0 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(\spo[15]_INST_0_i_1_n_0 ),
        .I3(a[7]),
        .I4(\spo[14]_INST_0_i_1_n_0 ),
        .I5(a[5]),
        .O(spo[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[14]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[0]),
        .O(\spo[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \spo[15]_INST_0 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(\spo[15]_INST_0_i_1_n_0 ),
        .I4(a[7]),
        .O(spo[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \spo[15]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[0]),
        .O(\spo[15]_INST_0_i_1_n_0 ));
  MUXF8 \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(\spo[1]_INST_0_i_2_n_0 ),
        .O(spo[1]),
        .S(a[6]));
  MUXF7 \spo[1]_INST_0_i_1 
       (.I0(\spo[1]_INST_0_i_3_n_0 ),
        .I1(\spo[1]_INST_0_i_4_n_0 ),
        .O(\spo[1]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[1]_INST_0_i_2 
       (.I0(\spo[1]_INST_0_i_5_n_0 ),
        .I1(\spo[1]_INST_0_i_6_n_0 ),
        .O(\spo[1]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h1FF6F74513A26C78)) 
    \spo[1]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4FD365D6ACE6BBE6)) 
    \spo[1]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h892C439089A542DA)) 
    \spo[1]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h15A99170DC030B79)) 
    \spo[1]_INST_0_i_6 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_6_n_0 ));
  MUXF8 \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(\spo[2]_INST_0_i_2_n_0 ),
        .O(spo[2]),
        .S(a[6]));
  MUXF7 \spo[2]_INST_0_i_1 
       (.I0(\spo[2]_INST_0_i_3_n_0 ),
        .I1(\spo[2]_INST_0_i_4_n_0 ),
        .O(\spo[2]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[2]_INST_0_i_2 
       (.I0(\spo[2]_INST_0_i_5_n_0 ),
        .I1(\spo[2]_INST_0_i_6_n_0 ),
        .O(\spo[2]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h43C08D72F5831830)) 
    \spo[2]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFB77377818C50975)) 
    \spo[2]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1EF1153EC172160E)) 
    \spo[2]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3B74EF0313E5CED5)) 
    \spo[2]_INST_0_i_6 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[2]_INST_0_i_6_n_0 ));
  MUXF8 \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(\spo[3]_INST_0_i_2_n_0 ),
        .O(spo[3]),
        .S(a[6]));
  MUXF7 \spo[3]_INST_0_i_1 
       (.I0(\spo[3]_INST_0_i_3_n_0 ),
        .I1(\spo[3]_INST_0_i_4_n_0 ),
        .O(\spo[3]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[3]_INST_0_i_2 
       (.I0(\spo[3]_INST_0_i_5_n_0 ),
        .I1(\spo[3]_INST_0_i_6_n_0 ),
        .O(\spo[3]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hB34EDB8756C31290)) 
    \spo[3]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC2314C0A242E7B0)) 
    \spo[3]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2DBF8ABDCB3170CE)) 
    \spo[3]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[0]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6379C152E843DB2F)) 
    \spo[3]_INST_0_i_6 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_6_n_0 ));
  MUXF8 \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(\spo[4]_INST_0_i_2_n_0 ),
        .O(spo[4]),
        .S(a[6]));
  MUXF7 \spo[4]_INST_0_i_1 
       (.I0(\spo[4]_INST_0_i_3_n_0 ),
        .I1(\spo[4]_INST_0_i_4_n_0 ),
        .O(\spo[4]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[4]_INST_0_i_2 
       (.I0(\spo[4]_INST_0_i_5_n_0 ),
        .I1(\spo[4]_INST_0_i_6_n_0 ),
        .O(\spo[4]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h840809996A7F2670)) 
    \spo[4]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F54B2A3CC67453C)) 
    \spo[4]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3193AD55DCCB20BE)) 
    \spo[4]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h161E69FAB69DF0EC)) 
    \spo[4]_INST_0_i_6 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_6_n_0 ));
  MUXF8 \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(\spo[5]_INST_0_i_2_n_0 ),
        .O(spo[5]),
        .S(a[6]));
  MUXF7 \spo[5]_INST_0_i_1 
       (.I0(\spo[5]_INST_0_i_3_n_0 ),
        .I1(\spo[5]_INST_0_i_4_n_0 ),
        .O(\spo[5]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[5]_INST_0_i_2 
       (.I0(\spo[5]_INST_0_i_5_n_0 ),
        .I1(\spo[5]_INST_0_i_6_n_0 ),
        .O(\spo[5]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h500CD4993E73A734)) 
    \spo[5]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h336E7F2BF66FFE2C)) 
    \spo[5]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB200B81098039936)) 
    \spo[5]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h33A8163D6C4FF15C)) 
    \spo[5]_INST_0_i_6 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_6_n_0 ));
  MUXF8 \spo[6]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(\spo[6]_INST_0_i_2_n_0 ),
        .O(spo[6]),
        .S(a[6]));
  MUXF7 \spo[6]_INST_0_i_1 
       (.I0(\spo[6]_INST_0_i_3_n_0 ),
        .I1(\spo[6]_INST_0_i_4_n_0 ),
        .O(\spo[6]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[6]_INST_0_i_2 
       (.I0(\spo[6]_INST_0_i_5_n_0 ),
        .I1(\spo[6]_INST_0_i_6_n_0 ),
        .O(\spo[6]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h3853F893E5972CD0)) 
    \spo[6]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDED7565E47CE57C9)) 
    \spo[6]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC1C1594858D1584D)) 
    \spo[6]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h43BE638E61055C36)) 
    \spo[6]_INST_0_i_6 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[6]_INST_0_i_6_n_0 ));
  MUXF8 \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(\spo[7]_INST_0_i_2_n_0 ),
        .O(spo[7]),
        .S(a[6]));
  MUXF7 \spo[7]_INST_0_i_1 
       (.I0(\spo[7]_INST_0_i_3_n_0 ),
        .I1(\spo[7]_INST_0_i_4_n_0 ),
        .O(\spo[7]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[7]_INST_0_i_2 
       (.I0(\spo[7]_INST_0_i_5_n_0 ),
        .I1(\spo[7]_INST_0_i_6_n_0 ),
        .O(\spo[7]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h58F1853526DF3BD8)) 
    \spo[7]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4B4B7078D3C2E0F3)) 
    \spo[7]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0BCE834F12DF12DA)) 
    \spo[7]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h453547BE30E90253)) 
    \spo[7]_INST_0_i_6 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[7]_INST_0_i_6_n_0 ));
  MUXF8 \spo[8]_INST_0 
       (.I0(\spo[8]_INST_0_i_1_n_0 ),
        .I1(\spo[8]_INST_0_i_2_n_0 ),
        .O(spo[8]),
        .S(a[6]));
  MUXF7 \spo[8]_INST_0_i_1 
       (.I0(\spo[8]_INST_0_i_3_n_0 ),
        .I1(\spo[8]_INST_0_i_4_n_0 ),
        .O(\spo[8]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[8]_INST_0_i_2 
       (.I0(\spo[8]_INST_0_i_5_n_0 ),
        .I1(\spo[8]_INST_0_i_6_n_0 ),
        .O(\spo[8]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'hCB39F59B1FD5B13C)) 
    \spo[8]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD9513CBCE26A1F86)) 
    \spo[8]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEA7B9C8C27365041)) 
    \spo[8]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h37652506403272C9)) 
    \spo[8]_INST_0_i_6 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_6_n_0 ));
  MUXF8 \spo[9]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(\spo[9]_INST_0_i_2_n_0 ),
        .O(spo[9]),
        .S(a[6]));
  MUXF7 \spo[9]_INST_0_i_1 
       (.I0(\spo[9]_INST_0_i_3_n_0 ),
        .I1(\spo[9]_INST_0_i_4_n_0 ),
        .O(\spo[9]_INST_0_i_1_n_0 ),
        .S(a[4]));
  MUXF7 \spo[9]_INST_0_i_2 
       (.I0(\spo[9]_INST_0_i_5_n_0 ),
        .I1(\spo[9]_INST_0_i_6_n_0 ),
        .O(\spo[9]_INST_0_i_2_n_0 ),
        .S(a[4]));
  LUT6 #(
    .INIT(64'h1BF5D91F5B5FF11C)) 
    \spo[9]_INST_0_i_3 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9D2656656AD988B3)) 
    \spo[9]_INST_0_i_4 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h26EA99544599BE62)) 
    \spo[9]_INST_0_i_5 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0075570062452773)) 
    \spo[9]_INST_0_i_6 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[9]_INST_0_i_6_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
