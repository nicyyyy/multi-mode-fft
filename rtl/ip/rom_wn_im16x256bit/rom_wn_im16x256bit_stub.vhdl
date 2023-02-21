-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Feb 12 10:58:40 2023
-- Host        : DESKTOP-8AOC8LP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/my_verilog/adv/fft/fft_64/fft_64.srcs/sources_1/ip/rom_wn_im16x256bit/rom_wn_im16x256bit_stub.vhdl
-- Design      : rom_wn_im16x256bit
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rom_wn_im16x256bit is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end rom_wn_im16x256bit;

architecture stub of rom_wn_im16x256bit is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[7:0],spo[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0_12,Vivado 2018.3";
begin
end;
