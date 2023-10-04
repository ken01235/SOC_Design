############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_interface -mode s_axilite -depth 600 "fir_n11_strm"
set_directive_interface -mode m_axi -depth 600 -offset slave "fir_n11_strm" pstrmInput
set_directive_interface -mode m_axi -depth 600 -offset slave "fir_n11_strm" pstrmOutput
set_directive_interface -mode s_axilite -depth 600 "fir_n11_strm" an32Coef
set_directive_interface -mode s_axilite -depth 600 "fir_n11_strm" regXferLeng
set_directive_top -name fir_n11_strm "fir_n11_strm"
