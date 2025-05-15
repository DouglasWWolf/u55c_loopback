//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Thu May 15 13:58:04 2025
//Host        : wolf-super-server running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level.bd
//Design      : top_level
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module eth_0_imp_XNRRM1
   (aligned,
    axis_rx_tdata,
    axis_rx_tkeep,
    axis_rx_tlast,
    axis_rx_tready,
    axis_rx_tuser,
    axis_rx_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tuser,
    axis_tx_tvalid,
    init_clk,
    qsfp_clk_clk_n,
    qsfp_clk_clk_p,
    qsfp_gt_grx_n,
    qsfp_gt_grx_p,
    qsfp_gt_gtx_n,
    qsfp_gt_gtx_p,
    rsfec_enable,
    stream_clk,
    stream_resetn,
    sys_resetn,
    tx_diff,
    tx_post,
    tx_pre);
  output aligned;
  output [511:0]axis_rx_tdata;
  output [63:0]axis_rx_tkeep;
  output axis_rx_tlast;
  input axis_rx_tready;
  output axis_rx_tuser;
  output axis_rx_tvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tuser;
  input axis_tx_tvalid;
  input init_clk;
  input qsfp_clk_clk_n;
  input qsfp_clk_clk_p;
  input [3:0]qsfp_gt_grx_n;
  input [3:0]qsfp_gt_grx_p;
  output [3:0]qsfp_gt_gtx_n;
  output [3:0]qsfp_gt_gtx_p;
  input rsfec_enable;
  output stream_clk;
  output stream_resetn;
  input sys_resetn;
  input [4:0]tx_diff;
  input [4:0]tx_post;
  input [4:0]tx_pre;

  wire aligned;
  wire [511:0]axis_rx_tdata;
  wire [63:0]axis_rx_tkeep;
  wire axis_rx_tlast;
  wire axis_rx_tuser;
  wire axis_rx_tvalid;
  wire [511:0]axis_tx_tdata;
  wire [63:0]axis_tx_tkeep;
  wire axis_tx_tlast;
  wire axis_tx_tready;
  wire axis_tx_tuser;
  wire axis_tx_tvalid;
  wire cmac_control_ex_ctl_rx_ctl_enable;
  wire cmac_control_ex_ctl_tx_ctl_enable;
  wire cmac_control_ex_ctl_tx_ctl_tx_send_rfi;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txdiffctrl;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txpostcursor;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txprecursor;
  wire cmac_control_ex_reset_rx_datapath;
  wire cmac_control_ex_rs_fec_ctl_rx_rsfec_enable;
  wire cmac_control_ex_rs_fec_ctl_rx_rsfec_enable_correction;
  wire cmac_control_ex_rs_fec_ctl_rx_rsfec_enable_indication;
  wire cmac_control_ex_rs_fec_ctl_tx_rsfec_enable;
  wire cmac_control_ex_sys_reset_out;
  wire cmac_stat_rx_stat_rx_aligned;
  wire init_clk;
  wire qsfp_clk_clk_n;
  wire qsfp_clk_clk_p;
  wire [3:0]qsfp_gt_grx_n;
  wire [3:0]qsfp_gt_grx_p;
  wire [3:0]qsfp_gt_gtx_n;
  wire [3:0]qsfp_gt_gtx_p;
  wire rsfec_enable;
  wire stream_clk;
  wire stream_resetn;
  wire sys_resetn;
  wire [4:0]tx_diff;
  wire [4:0]tx_post;
  wire [4:0]tx_pre;

  top_level_cmac_usplus_0_0 cmac
       (.common0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpen(1'b0),
        .common0_drpwe(1'b0),
        .core_drp_reset(1'b0),
        .core_rx_reset(1'b0),
        .core_tx_reset(1'b0),
        .ctl_rsfec_ieee_error_indication_mode(1'b0),
        .ctl_rx_enable(cmac_control_ex_ctl_rx_ctl_enable),
        .ctl_rx_force_resync(1'b0),
        .ctl_rx_rsfec_enable(cmac_control_ex_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_ex_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_ex_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_rx_test_pattern(1'b0),
        .ctl_tx_enable(cmac_control_ex_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_ex_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_ex_ctl_tx_ctl_tx_send_rfi),
        .ctl_tx_test_pattern(1'b0),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(init_clk),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpen(1'b0),
        .gt0_drpwe(1'b0),
        .gt1_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpen(1'b0),
        .gt1_drpwe(1'b0),
        .gt2_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpen(1'b0),
        .gt2_drpwe(1'b0),
        .gt3_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpen(1'b0),
        .gt3_drpwe(1'b0),
        .gt_drpclk(init_clk),
        .gt_eyescanreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_eyescantrigger({1'b0,1'b0,1'b0,1'b0}),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(qsfp_clk_clk_n),
        .gt_ref_clk_p(qsfp_clk_clk_p),
        .gt_rxcdrhold({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxdfelpmreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxlpmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxn_in(qsfp_gt_grx_n),
        .gt_rxp_in(qsfp_gt_grx_p),
        .gt_rxpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbscntreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_rxrate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txdiffctrl(cmac_control_ex_gt_trans_debug_gt_txdiffctrl),
        .gt_txinhibit({1'b0,1'b0,1'b0,1'b0}),
        .gt_txn_out(qsfp_gt_gtx_n),
        .gt_txp_out(qsfp_gt_gtx_p),
        .gt_txpippmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpippmsel({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpostcursor(cmac_control_ex_gt_trans_debug_gt_txpostcursor),
        .gt_txprbsforceerr({1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprecursor(cmac_control_ex_gt_trans_debug_gt_txprecursor),
        .gt_txusrclk2(stream_clk),
        .gtwiz_reset_rx_datapath(1'b0),
        .gtwiz_reset_tx_datapath(cmac_control_ex_reset_rx_datapath),
        .init_clk(init_clk),
        .rx_axis_tdata(axis_rx_tdata),
        .rx_axis_tkeep(axis_rx_tkeep),
        .rx_axis_tlast(axis_rx_tlast),
        .rx_axis_tuser(axis_rx_tuser),
        .rx_axis_tvalid(axis_rx_tvalid),
        .rx_clk(stream_clk),
        .stat_rx_aligned(cmac_stat_rx_stat_rx_aligned),
        .sys_reset(cmac_control_ex_sys_reset_out),
        .tx_axis_tdata(axis_tx_tdata),
        .tx_axis_tkeep(axis_tx_tkeep),
        .tx_axis_tlast(axis_tx_tlast),
        .tx_axis_tready(axis_tx_tready),
        .tx_axis_tuser(axis_tx_tuser),
        .tx_axis_tvalid(axis_tx_tvalid),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  top_level_cmac_control_ex_0_0 cmac_control_ex
       (.ctl_rx_enable(cmac_control_ex_ctl_rx_ctl_enable),
        .ctl_rx_rsfec_enable(cmac_control_ex_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_ex_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_ex_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_tx_enable(cmac_control_ex_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_ex_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_rfi(cmac_control_ex_ctl_tx_ctl_tx_send_rfi),
        .gt_txdiffctrl(cmac_control_ex_gt_trans_debug_gt_txdiffctrl),
        .gt_txpostcursor(cmac_control_ex_gt_trans_debug_gt_txpostcursor),
        .gt_txprecursor(cmac_control_ex_gt_trans_debug_gt_txprecursor),
        .reset_rx_datapath(cmac_control_ex_reset_rx_datapath),
        .rsfec_enable(rsfec_enable),
        .rx_clk(stream_clk),
        .rx_resetn_out(stream_resetn),
        .stat_rx_aligned(cmac_stat_rx_stat_rx_aligned),
        .sync_rx_aligned(aligned),
        .sys_reset_out(cmac_control_ex_sys_reset_out),
        .sys_resetn_in(sys_resetn),
        .tx_diff(tx_diff),
        .tx_post(tx_post),
        .tx_pre(tx_pre));
endmodule

module eth_1_imp_15S0GQF
   (aligned,
    axis_rx_tdata,
    axis_rx_tkeep,
    axis_rx_tlast,
    axis_rx_tready,
    axis_rx_tuser,
    axis_rx_tvalid,
    axis_tx_tdata,
    axis_tx_tkeep,
    axis_tx_tlast,
    axis_tx_tready,
    axis_tx_tuser,
    axis_tx_tvalid,
    init_clk,
    qsfp_clk_clk_n,
    qsfp_clk_clk_p,
    qsfp_gt_grx_n,
    qsfp_gt_grx_p,
    qsfp_gt_gtx_n,
    qsfp_gt_gtx_p,
    rsfec_enable,
    stream_clk,
    stream_resetn,
    sys_resetn,
    tx_diff,
    tx_post,
    tx_pre);
  output aligned;
  output [511:0]axis_rx_tdata;
  output [63:0]axis_rx_tkeep;
  output axis_rx_tlast;
  input axis_rx_tready;
  output axis_rx_tuser;
  output axis_rx_tvalid;
  input [511:0]axis_tx_tdata;
  input [63:0]axis_tx_tkeep;
  input axis_tx_tlast;
  output axis_tx_tready;
  input axis_tx_tuser;
  input axis_tx_tvalid;
  input init_clk;
  input qsfp_clk_clk_n;
  input qsfp_clk_clk_p;
  input [3:0]qsfp_gt_grx_n;
  input [3:0]qsfp_gt_grx_p;
  output [3:0]qsfp_gt_gtx_n;
  output [3:0]qsfp_gt_gtx_p;
  input rsfec_enable;
  output stream_clk;
  output stream_resetn;
  input sys_resetn;
  input [4:0]tx_diff;
  input [4:0]tx_post;
  input [4:0]tx_pre;

  wire aligned;
  wire [511:0]axis_rx_tdata;
  wire [63:0]axis_rx_tkeep;
  wire axis_rx_tlast;
  wire axis_rx_tuser;
  wire axis_rx_tvalid;
  wire [511:0]axis_tx_tdata;
  wire [63:0]axis_tx_tkeep;
  wire axis_tx_tlast;
  wire axis_tx_tready;
  wire axis_tx_tuser;
  wire axis_tx_tvalid;
  wire cmac_control_ex_ctl_rx_ctl_enable;
  wire cmac_control_ex_ctl_tx_ctl_enable;
  wire cmac_control_ex_ctl_tx_ctl_tx_send_rfi;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txdiffctrl;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txpostcursor;
  wire [19:0]cmac_control_ex_gt_trans_debug_gt_txprecursor;
  wire cmac_control_ex_reset_rx_datapath;
  wire cmac_control_ex_rs_fec_ctl_rx_rsfec_enable;
  wire cmac_control_ex_rs_fec_ctl_rx_rsfec_enable_correction;
  wire cmac_control_ex_rs_fec_ctl_rx_rsfec_enable_indication;
  wire cmac_control_ex_rs_fec_ctl_tx_rsfec_enable;
  wire cmac_control_ex_sys_reset_out;
  wire cmac_stat_rx_stat_rx_aligned;
  wire init_clk;
  wire qsfp_clk_clk_n;
  wire qsfp_clk_clk_p;
  wire [3:0]qsfp_gt_grx_n;
  wire [3:0]qsfp_gt_grx_p;
  wire [3:0]qsfp_gt_gtx_n;
  wire [3:0]qsfp_gt_gtx_p;
  wire rsfec_enable;
  wire stream_clk;
  wire stream_resetn;
  wire sys_resetn;
  wire [4:0]tx_diff;
  wire [4:0]tx_post;
  wire [4:0]tx_pre;

  top_level_cmac_0 cmac
       (.common0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .common0_drpen(1'b0),
        .common0_drpwe(1'b0),
        .core_drp_reset(1'b0),
        .core_rx_reset(1'b0),
        .core_tx_reset(1'b0),
        .ctl_rsfec_ieee_error_indication_mode(1'b0),
        .ctl_rx_enable(cmac_control_ex_ctl_rx_ctl_enable),
        .ctl_rx_force_resync(1'b0),
        .ctl_rx_rsfec_enable(cmac_control_ex_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_ex_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_ex_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_rx_test_pattern(1'b0),
        .ctl_tx_enable(cmac_control_ex_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_ex_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_idle(1'b0),
        .ctl_tx_send_lfi(1'b0),
        .ctl_tx_send_rfi(cmac_control_ex_ctl_tx_ctl_tx_send_rfi),
        .ctl_tx_test_pattern(1'b0),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(init_clk),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpen(1'b0),
        .gt0_drpwe(1'b0),
        .gt1_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt1_drpen(1'b0),
        .gt1_drpwe(1'b0),
        .gt2_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt2_drpen(1'b0),
        .gt2_drpwe(1'b0),
        .gt3_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt3_drpen(1'b0),
        .gt3_drpwe(1'b0),
        .gt_drpclk(init_clk),
        .gt_eyescanreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_eyescantrigger({1'b0,1'b0,1'b0,1'b0}),
        .gt_loopback_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_ref_clk_n(qsfp_clk_clk_n),
        .gt_ref_clk_p(qsfp_clk_clk_p),
        .gt_rxcdrhold({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxdfelpmreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxlpmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxn_in(qsfp_gt_grx_n),
        .gt_rxp_in(qsfp_gt_grx_p),
        .gt_rxpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbscntreset({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_rxrate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txdiffctrl(cmac_control_ex_gt_trans_debug_gt_txdiffctrl),
        .gt_txinhibit({1'b0,1'b0,1'b0,1'b0}),
        .gt_txn_out(qsfp_gt_gtx_n),
        .gt_txp_out(qsfp_gt_gtx_p),
        .gt_txpippmen({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpippmsel({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpolarity({1'b0,1'b0,1'b0,1'b0}),
        .gt_txpostcursor(cmac_control_ex_gt_trans_debug_gt_txpostcursor),
        .gt_txprbsforceerr({1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbssel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprecursor(cmac_control_ex_gt_trans_debug_gt_txprecursor),
        .gt_txusrclk2(stream_clk),
        .gtwiz_reset_rx_datapath(cmac_control_ex_reset_rx_datapath),
        .gtwiz_reset_tx_datapath(1'b0),
        .init_clk(init_clk),
        .rx_axis_tdata(axis_rx_tdata),
        .rx_axis_tkeep(axis_rx_tkeep),
        .rx_axis_tlast(axis_rx_tlast),
        .rx_axis_tuser(axis_rx_tuser),
        .rx_axis_tvalid(axis_rx_tvalid),
        .rx_clk(stream_clk),
        .stat_rx_aligned(cmac_stat_rx_stat_rx_aligned),
        .sys_reset(cmac_control_ex_sys_reset_out),
        .tx_axis_tdata(axis_tx_tdata),
        .tx_axis_tkeep(axis_tx_tkeep),
        .tx_axis_tlast(axis_tx_tlast),
        .tx_axis_tready(axis_tx_tready),
        .tx_axis_tuser(axis_tx_tuser),
        .tx_axis_tvalid(axis_tx_tvalid),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  top_level_cmac_control_ex_0_1 cmac_control_ex
       (.ctl_rx_enable(cmac_control_ex_ctl_rx_ctl_enable),
        .ctl_rx_rsfec_enable(cmac_control_ex_rs_fec_ctl_rx_rsfec_enable),
        .ctl_rx_rsfec_enable_correction(cmac_control_ex_rs_fec_ctl_rx_rsfec_enable_correction),
        .ctl_rx_rsfec_enable_indication(cmac_control_ex_rs_fec_ctl_rx_rsfec_enable_indication),
        .ctl_tx_enable(cmac_control_ex_ctl_tx_ctl_enable),
        .ctl_tx_rsfec_enable(cmac_control_ex_rs_fec_ctl_tx_rsfec_enable),
        .ctl_tx_send_rfi(cmac_control_ex_ctl_tx_ctl_tx_send_rfi),
        .gt_txdiffctrl(cmac_control_ex_gt_trans_debug_gt_txdiffctrl),
        .gt_txpostcursor(cmac_control_ex_gt_trans_debug_gt_txpostcursor),
        .gt_txprecursor(cmac_control_ex_gt_trans_debug_gt_txprecursor),
        .reset_rx_datapath(cmac_control_ex_reset_rx_datapath),
        .rsfec_enable(rsfec_enable),
        .rx_clk(stream_clk),
        .rx_resetn_out(stream_resetn),
        .stat_rx_aligned(cmac_stat_rx_stat_rx_aligned),
        .sync_rx_aligned(aligned),
        .sys_reset_out(cmac_control_ex_sys_reset_out),
        .sys_resetn_in(sys_resetn),
        .tx_diff(tx_diff),
        .tx_post(tx_post),
        .tx_pre(tx_pre));
endmodule

module loopback_imp_1EA56MH
   (active_0,
    active_1,
    aligned0,
    aligned1,
    init_clk,
    qsfp0_clk_clk_n,
    qsfp0_clk_clk_p,
    qsfp0_gt_grx_n,
    qsfp0_gt_grx_p,
    qsfp0_gt_gtx_n,
    qsfp0_gt_gtx_p,
    qsfp1_clk_clk_n,
    qsfp1_clk_clk_p,
    qsfp1_gt_grx_n,
    qsfp1_gt_grx_p,
    qsfp1_gt_gtx_n,
    qsfp1_gt_gtx_p,
    rsfec_enable,
    sys_resetn,
    tx_diff,
    tx_post,
    tx_pre);
  output active_0;
  output active_1;
  output aligned0;
  output aligned1;
  input init_clk;
  input qsfp0_clk_clk_n;
  input qsfp0_clk_clk_p;
  input [3:0]qsfp0_gt_grx_n;
  input [3:0]qsfp0_gt_grx_p;
  output [3:0]qsfp0_gt_gtx_n;
  output [3:0]qsfp0_gt_gtx_p;
  input qsfp1_clk_clk_n;
  input qsfp1_clk_clk_p;
  input [3:0]qsfp1_gt_grx_n;
  input [3:0]qsfp1_gt_grx_p;
  output [3:0]qsfp1_gt_gtx_n;
  output [3:0]qsfp1_gt_gtx_p;
  input rsfec_enable;
  input sys_resetn;
  input [4:0]tx_diff;
  input [4:0]tx_post;
  input [4:0]tx_pre;

  (* CONN_BUS_INFO = "ETH0_RX xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]ETH0_RX_TDATA;
  (* CONN_BUS_INFO = "ETH0_RX xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]ETH0_RX_TKEEP;
  (* CONN_BUS_INFO = "ETH0_RX xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire ETH0_RX_TLAST;
  (* CONN_BUS_INFO = "ETH0_RX xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire ETH0_RX_TREADY;
  (* CONN_BUS_INFO = "ETH0_RX xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire ETH0_RX_TUSER;
  (* CONN_BUS_INFO = "ETH0_RX xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire ETH0_RX_TVALID;
  (* CONN_BUS_INFO = "ETH0_TX xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]ETH0_TX_TDATA;
  (* CONN_BUS_INFO = "ETH0_TX xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]ETH0_TX_TKEEP;
  (* CONN_BUS_INFO = "ETH0_TX xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire ETH0_TX_TLAST;
  (* CONN_BUS_INFO = "ETH0_TX xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire ETH0_TX_TREADY;
  (* CONN_BUS_INFO = "ETH0_TX xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire [0:0]ETH0_TX_TUSER;
  (* CONN_BUS_INFO = "ETH0_TX xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire ETH0_TX_TVALID;
  (* CONN_BUS_INFO = "ETH1_RX xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]ETH1_RX_TDATA;
  (* CONN_BUS_INFO = "ETH1_RX xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]ETH1_RX_TKEEP;
  (* CONN_BUS_INFO = "ETH1_RX xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire ETH1_RX_TLAST;
  (* CONN_BUS_INFO = "ETH1_RX xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire ETH1_RX_TREADY;
  (* CONN_BUS_INFO = "ETH1_RX xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire ETH1_RX_TUSER;
  (* CONN_BUS_INFO = "ETH1_RX xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire ETH1_RX_TVALID;
  (* CONN_BUS_INFO = "ETH1_TX xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]ETH1_TX_TDATA;
  (* CONN_BUS_INFO = "ETH1_TX xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]ETH1_TX_TKEEP;
  (* CONN_BUS_INFO = "ETH1_TX xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire ETH1_TX_TLAST;
  (* CONN_BUS_INFO = "ETH1_TX xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire ETH1_TX_TREADY;
  (* CONN_BUS_INFO = "ETH1_TX xilinx.com:interface:axis:1.0 None TUSER" *) (* DONT_TOUCH *) wire [0:0]ETH1_TX_TUSER;
  (* CONN_BUS_INFO = "ETH1_TX xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire ETH1_TX_TVALID;
  wire active_0;
  wire active_1;
  wire eth0_aligned;
  wire eth1_aligned;
  wire eth_0_stream_clk;
  wire eth_0_stream_resetn;
  wire eth_1_stream_clk;
  wire eth_1_stream_resetn;
  wire init_clk;
  wire qsfp0_clk_clk_n;
  wire qsfp0_clk_clk_p;
  wire [3:0]qsfp0_gt_grx_n;
  wire [3:0]qsfp0_gt_grx_p;
  wire [3:0]qsfp0_gt_gtx_n;
  wire [3:0]qsfp0_gt_gtx_p;
  wire qsfp1_clk_clk_n;
  wire qsfp1_clk_clk_p;
  wire [3:0]qsfp1_gt_grx_n;
  wire [3:0]qsfp1_gt_grx_p;
  wire [3:0]qsfp1_gt_gtx_n;
  wire [3:0]qsfp1_gt_gtx_p;
  wire rsfec_enable;
  wire sys_resetn;
  wire [4:0]tx_diff;
  wire [4:0]tx_post;
  wire [4:0]tx_pre;

  assign aligned0 = eth0_aligned;
  assign aligned1 = eth1_aligned;
  top_level_activity_mon_0_0 activity_mon_0
       (.active(active_0),
        .clk(eth_0_stream_clk),
        .resetn(eth_0_stream_resetn),
        .stream_tdata(ETH0_RX_TDATA),
        .stream_tvalid(ETH0_RX_TVALID));
  top_level_activity_mon_1_0 activity_mon_1
       (.active(active_1),
        .clk(eth_1_stream_clk),
        .resetn(eth_1_stream_resetn),
        .stream_tdata(ETH1_RX_TDATA),
        .stream_tvalid(ETH1_RX_TVALID));
  top_level_system_ila_0_1 eth0_ila
       (.SLOT_0_AXIS_tdata(ETH0_RX_TDATA[0]),
        .SLOT_0_AXIS_tdest(1'b0),
        .SLOT_0_AXIS_tid(1'b0),
        .SLOT_0_AXIS_tkeep(ETH0_RX_TKEEP[0]),
        .SLOT_0_AXIS_tlast(ETH0_RX_TLAST),
        .SLOT_0_AXIS_tready(ETH0_RX_TREADY),
        .SLOT_0_AXIS_tstrb(1'b1),
        .SLOT_0_AXIS_tuser(ETH0_RX_TUSER),
        .SLOT_0_AXIS_tvalid(ETH0_RX_TVALID),
        .SLOT_1_AXIS_tdata(ETH0_TX_TDATA[0]),
        .SLOT_1_AXIS_tdest(1'b0),
        .SLOT_1_AXIS_tid(1'b0),
        .SLOT_1_AXIS_tkeep(ETH0_TX_TKEEP[0]),
        .SLOT_1_AXIS_tlast(ETH0_TX_TLAST),
        .SLOT_1_AXIS_tready(ETH0_TX_TREADY),
        .SLOT_1_AXIS_tstrb(1'b1),
        .SLOT_1_AXIS_tuser(ETH0_TX_TUSER),
        .SLOT_1_AXIS_tvalid(ETH0_TX_TVALID),
        .clk(eth_0_stream_clk),
        .probe0(eth0_aligned),
        .resetn(eth_0_stream_resetn));
  top_level_system_ila_0_0 eth1_ila
       (.SLOT_0_AXIS_tdata(ETH1_RX_TDATA[0]),
        .SLOT_0_AXIS_tdest(1'b0),
        .SLOT_0_AXIS_tid(1'b0),
        .SLOT_0_AXIS_tkeep(ETH1_RX_TKEEP[0]),
        .SLOT_0_AXIS_tlast(ETH1_RX_TLAST),
        .SLOT_0_AXIS_tready(ETH1_RX_TREADY),
        .SLOT_0_AXIS_tstrb(1'b1),
        .SLOT_0_AXIS_tuser(ETH1_RX_TUSER),
        .SLOT_0_AXIS_tvalid(ETH1_RX_TVALID),
        .SLOT_1_AXIS_tdata(ETH1_TX_TDATA[0]),
        .SLOT_1_AXIS_tdest(1'b0),
        .SLOT_1_AXIS_tid(1'b0),
        .SLOT_1_AXIS_tkeep(ETH1_TX_TKEEP[0]),
        .SLOT_1_AXIS_tlast(ETH1_TX_TLAST),
        .SLOT_1_AXIS_tready(ETH1_TX_TREADY),
        .SLOT_1_AXIS_tstrb(1'b1),
        .SLOT_1_AXIS_tuser(ETH1_TX_TUSER),
        .SLOT_1_AXIS_tvalid(ETH1_TX_TVALID),
        .clk(eth_1_stream_clk),
        .probe0(eth1_aligned),
        .resetn(eth_1_stream_resetn));
  eth_0_imp_XNRRM1 eth_0
       (.aligned(eth0_aligned),
        .axis_rx_tdata(ETH0_RX_TDATA),
        .axis_rx_tkeep(ETH0_RX_TKEEP),
        .axis_rx_tlast(ETH0_RX_TLAST),
        .axis_rx_tready(ETH0_RX_TREADY),
        .axis_rx_tuser(ETH0_RX_TUSER),
        .axis_rx_tvalid(ETH0_RX_TVALID),
        .axis_tx_tdata(ETH0_TX_TDATA),
        .axis_tx_tkeep(ETH0_TX_TKEEP),
        .axis_tx_tlast(ETH0_TX_TLAST),
        .axis_tx_tready(ETH0_TX_TREADY),
        .axis_tx_tuser(ETH0_TX_TUSER),
        .axis_tx_tvalid(ETH0_TX_TVALID),
        .init_clk(init_clk),
        .qsfp_clk_clk_n(qsfp0_clk_clk_n),
        .qsfp_clk_clk_p(qsfp0_clk_clk_p),
        .qsfp_gt_grx_n(qsfp0_gt_grx_n),
        .qsfp_gt_grx_p(qsfp0_gt_grx_p),
        .qsfp_gt_gtx_n(qsfp0_gt_gtx_n),
        .qsfp_gt_gtx_p(qsfp0_gt_gtx_p),
        .rsfec_enable(rsfec_enable),
        .stream_clk(eth_0_stream_clk),
        .stream_resetn(eth_0_stream_resetn),
        .sys_resetn(sys_resetn),
        .tx_diff(tx_diff),
        .tx_post(tx_post),
        .tx_pre(tx_pre));
  eth_1_imp_15S0GQF eth_1
       (.aligned(eth1_aligned),
        .axis_rx_tdata(ETH1_RX_TDATA),
        .axis_rx_tkeep(ETH1_RX_TKEEP),
        .axis_rx_tlast(ETH1_RX_TLAST),
        .axis_rx_tready(ETH1_RX_TREADY),
        .axis_rx_tuser(ETH1_RX_TUSER),
        .axis_rx_tvalid(ETH1_RX_TVALID),
        .axis_tx_tdata(ETH1_TX_TDATA),
        .axis_tx_tkeep(ETH1_TX_TKEEP),
        .axis_tx_tlast(ETH1_TX_TLAST),
        .axis_tx_tready(ETH1_TX_TREADY),
        .axis_tx_tuser(ETH1_TX_TUSER),
        .axis_tx_tvalid(ETH1_TX_TVALID),
        .init_clk(init_clk),
        .qsfp_clk_clk_n(qsfp1_clk_clk_n),
        .qsfp_clk_clk_p(qsfp1_clk_clk_p),
        .qsfp_gt_grx_n(qsfp1_gt_grx_n),
        .qsfp_gt_grx_p(qsfp1_gt_grx_p),
        .qsfp_gt_gtx_n(qsfp1_gt_gtx_n),
        .qsfp_gt_gtx_p(qsfp1_gt_gtx_p),
        .rsfec_enable(rsfec_enable),
        .stream_clk(eth_1_stream_clk),
        .stream_resetn(eth_1_stream_resetn),
        .sys_resetn(sys_resetn),
        .tx_diff(tx_diff),
        .tx_post(tx_post),
        .tx_pre(tx_pre));
  top_level_packetizer_0_0 packetizer_0
       (.m_axis_tdata(ETH0_TX_TDATA),
        .m_axis_tkeep(ETH0_TX_TKEEP),
        .m_axis_tlast(ETH0_TX_TLAST),
        .m_axis_tready(ETH0_TX_TREADY),
        .m_axis_tuser(ETH0_TX_TUSER),
        .m_axis_tvalid(ETH0_TX_TVALID),
        .s_axis_aclk(eth_0_stream_clk),
        .s_axis_aresetn(eth_0_stream_resetn),
        .s_axis_tdata(ETH0_RX_TDATA),
        .s_axis_tkeep(ETH0_RX_TKEEP),
        .s_axis_tlast(ETH0_RX_TLAST),
        .s_axis_tready(ETH0_RX_TREADY),
        .s_axis_tuser(ETH0_RX_TUSER),
        .s_axis_tvalid(ETH0_RX_TVALID));
  top_level_axis_data_fifo_0_1 packetizer_1
       (.m_axis_tdata(ETH1_TX_TDATA),
        .m_axis_tkeep(ETH1_TX_TKEEP),
        .m_axis_tlast(ETH1_TX_TLAST),
        .m_axis_tready(ETH1_TX_TREADY),
        .m_axis_tuser(ETH1_TX_TUSER),
        .m_axis_tvalid(ETH1_TX_TVALID),
        .s_axis_aclk(eth_1_stream_clk),
        .s_axis_aresetn(eth_1_stream_resetn),
        .s_axis_tdata(ETH1_RX_TDATA),
        .s_axis_tkeep(ETH1_RX_TKEEP),
        .s_axis_tlast(ETH1_RX_TLAST),
        .s_axis_tready(ETH1_RX_TREADY),
        .s_axis_tuser(ETH1_RX_TUSER),
        .s_axis_tvalid(ETH1_RX_TVALID));
endmodule

module pcie_imp_P7FEFP
   (CMAC_TXDIFF,
    CMAC_TXPOST,
    CMAC_TXPRE,
    RSFEC_ENABLE,
    active0,
    active1,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p,
    resetn_out,
    sys_clk,
    sys_rst_n);
  output [4:0]CMAC_TXDIFF;
  output [4:0]CMAC_TXPOST;
  output [4:0]CMAC_TXPRE;
  output RSFEC_ENABLE;
  input active0;
  input active1;
  input [7:0]pcie_mgt_rxn;
  input [7:0]pcie_mgt_rxp;
  output [7:0]pcie_mgt_txn;
  output [7:0]pcie_mgt_txp;
  input [0:0]pcie_refclk_clk_n;
  input [0:0]pcie_refclk_clk_p;
  output resetn_out;
  output sys_clk;
  input sys_rst_n;

  wire [4:0]CMAC_TXDIFF;
  wire [4:0]CMAC_TXPOST;
  wire [4:0]CMAC_TXPRE;
  wire RSFEC_ENABLE;
  wire active0;
  wire active1;
  wire [63:0]pcie_bridge_M_AXI_B_ARADDR;
  wire [1:0]pcie_bridge_M_AXI_B_ARBURST;
  wire [3:0]pcie_bridge_M_AXI_B_ARCACHE;
  wire [3:0]pcie_bridge_M_AXI_B_ARID;
  wire [7:0]pcie_bridge_M_AXI_B_ARLEN;
  wire pcie_bridge_M_AXI_B_ARLOCK;
  wire [2:0]pcie_bridge_M_AXI_B_ARPROT;
  wire [0:0]pcie_bridge_M_AXI_B_ARREADY;
  wire [2:0]pcie_bridge_M_AXI_B_ARSIZE;
  wire pcie_bridge_M_AXI_B_ARVALID;
  wire [63:0]pcie_bridge_M_AXI_B_AWADDR;
  wire [1:0]pcie_bridge_M_AXI_B_AWBURST;
  wire [3:0]pcie_bridge_M_AXI_B_AWCACHE;
  wire [3:0]pcie_bridge_M_AXI_B_AWID;
  wire [7:0]pcie_bridge_M_AXI_B_AWLEN;
  wire pcie_bridge_M_AXI_B_AWLOCK;
  wire [2:0]pcie_bridge_M_AXI_B_AWPROT;
  wire [0:0]pcie_bridge_M_AXI_B_AWREADY;
  wire [2:0]pcie_bridge_M_AXI_B_AWSIZE;
  wire pcie_bridge_M_AXI_B_AWVALID;
  wire pcie_bridge_M_AXI_B_BID;
  wire pcie_bridge_M_AXI_B_BREADY;
  wire [1:0]pcie_bridge_M_AXI_B_BRESP;
  wire [0:0]pcie_bridge_M_AXI_B_BVALID;
  wire pcie_bridge_M_AXI_B_RDATA;
  wire pcie_bridge_M_AXI_B_RID;
  wire [0:0]pcie_bridge_M_AXI_B_RLAST;
  wire pcie_bridge_M_AXI_B_RREADY;
  wire [1:0]pcie_bridge_M_AXI_B_RRESP;
  wire [0:0]pcie_bridge_M_AXI_B_RVALID;
  wire [511:0]pcie_bridge_M_AXI_B_WDATA;
  wire pcie_bridge_M_AXI_B_WLAST;
  wire [0:0]pcie_bridge_M_AXI_B_WREADY;
  wire [63:0]pcie_bridge_M_AXI_B_WSTRB;
  wire pcie_bridge_M_AXI_B_WVALID;
  wire pcie_bridge_axi_aresetn;
  wire [7:0]pcie_mgt_rxn;
  wire [7:0]pcie_mgt_rxp;
  wire [7:0]pcie_mgt_txn;
  wire [7:0]pcie_mgt_txp;
  wire [0:0]pcie_refclk_clk_n;
  wire [0:0]pcie_refclk_clk_p;
  wire resetn_out;
  wire sys_clk;
  wire sys_rst_n;
  wire system_interconnect_M00_AXI_ARADDR;
  wire [2:0]system_interconnect_M00_AXI_ARPROT;
  wire system_interconnect_M00_AXI_ARREADY;
  wire [0:0]system_interconnect_M00_AXI_ARVALID;
  wire system_interconnect_M00_AXI_AWADDR;
  wire [2:0]system_interconnect_M00_AXI_AWPROT;
  wire system_interconnect_M00_AXI_AWREADY;
  wire [0:0]system_interconnect_M00_AXI_AWVALID;
  wire [0:0]system_interconnect_M00_AXI_BREADY;
  wire [1:0]system_interconnect_M00_AXI_BRESP;
  wire system_interconnect_M00_AXI_BVALID;
  wire [31:0]system_interconnect_M00_AXI_RDATA;
  wire [0:0]system_interconnect_M00_AXI_RREADY;
  wire [1:0]system_interconnect_M00_AXI_RRESP;
  wire system_interconnect_M00_AXI_RVALID;
  wire system_interconnect_M00_AXI_WDATA;
  wire system_interconnect_M00_AXI_WREADY;
  wire system_interconnect_M00_AXI_WSTRB;
  wire [0:0]system_interconnect_M00_AXI_WVALID;
  wire system_interconnect_M01_AXI_ARADDR;
  wire [2:0]system_interconnect_M01_AXI_ARPROT;
  wire system_interconnect_M01_AXI_ARREADY;
  wire [0:0]system_interconnect_M01_AXI_ARVALID;
  wire system_interconnect_M01_AXI_AWADDR;
  wire [2:0]system_interconnect_M01_AXI_AWPROT;
  wire system_interconnect_M01_AXI_AWREADY;
  wire [0:0]system_interconnect_M01_AXI_AWVALID;
  wire [0:0]system_interconnect_M01_AXI_BREADY;
  wire [1:0]system_interconnect_M01_AXI_BRESP;
  wire system_interconnect_M01_AXI_BVALID;
  wire [31:0]system_interconnect_M01_AXI_RDATA;
  wire [0:0]system_interconnect_M01_AXI_RREADY;
  wire [1:0]system_interconnect_M01_AXI_RRESP;
  wire system_interconnect_M01_AXI_RVALID;
  wire system_interconnect_M01_AXI_WDATA;
  wire system_interconnect_M01_AXI_WREADY;
  wire system_interconnect_M01_AXI_WSTRB;
  wire [0:0]system_interconnect_M01_AXI_WVALID;
  wire [0:0]util_ds_buf_0_IBUF_DS_ODIV2;
  wire [0:0]util_ds_buf_0_IBUF_OUT;

  top_level_axi_config_0_0 axi_config
       (.CMAC_TXDIFF(CMAC_TXDIFF),
        .CMAC_TXPOST(CMAC_TXPOST),
        .CMAC_TXPRE(CMAC_TXPRE),
        .RSFEC_ENABLE(RSFEC_ENABLE),
        .S_AXI_ARADDR({system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR}),
        .S_AXI_ARPROT(system_interconnect_M01_AXI_ARPROT),
        .S_AXI_ARREADY(system_interconnect_M01_AXI_ARREADY),
        .S_AXI_ARVALID(system_interconnect_M01_AXI_ARVALID),
        .S_AXI_AWADDR({system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR}),
        .S_AXI_AWPROT(system_interconnect_M01_AXI_AWPROT),
        .S_AXI_AWREADY(system_interconnect_M01_AXI_AWREADY),
        .S_AXI_AWVALID(system_interconnect_M01_AXI_AWVALID),
        .S_AXI_BREADY(system_interconnect_M01_AXI_BREADY),
        .S_AXI_BRESP(system_interconnect_M01_AXI_BRESP),
        .S_AXI_BVALID(system_interconnect_M01_AXI_BVALID),
        .S_AXI_RDATA(system_interconnect_M01_AXI_RDATA),
        .S_AXI_RREADY(system_interconnect_M01_AXI_RREADY),
        .S_AXI_RRESP(system_interconnect_M01_AXI_RRESP),
        .S_AXI_RVALID(system_interconnect_M01_AXI_RVALID),
        .S_AXI_WDATA({system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA}),
        .S_AXI_WREADY(system_interconnect_M01_AXI_WREADY),
        .S_AXI_WSTRB({system_interconnect_M01_AXI_WSTRB,system_interconnect_M01_AXI_WSTRB,system_interconnect_M01_AXI_WSTRB,system_interconnect_M01_AXI_WSTRB}),
        .S_AXI_WVALID(system_interconnect_M01_AXI_WVALID),
        .active0(active0),
        .active1(active1),
        .clk(sys_clk),
        .resetn(pcie_bridge_axi_aresetn),
        .resetn_out(resetn_out));
  top_level_axi_revision_0_0 axi_revision
       (.AXI_ACLK(sys_clk),
        .AXI_ARESETN(pcie_bridge_axi_aresetn),
        .S_AXI_ARADDR({system_interconnect_M00_AXI_ARADDR,system_interconnect_M00_AXI_ARADDR,system_interconnect_M00_AXI_ARADDR,system_interconnect_M00_AXI_ARADDR,system_interconnect_M00_AXI_ARADDR}),
        .S_AXI_ARPROT(system_interconnect_M00_AXI_ARPROT),
        .S_AXI_ARREADY(system_interconnect_M00_AXI_ARREADY),
        .S_AXI_ARVALID(system_interconnect_M00_AXI_ARVALID),
        .S_AXI_AWADDR({system_interconnect_M00_AXI_AWADDR,system_interconnect_M00_AXI_AWADDR,system_interconnect_M00_AXI_AWADDR,system_interconnect_M00_AXI_AWADDR,system_interconnect_M00_AXI_AWADDR}),
        .S_AXI_AWPROT(system_interconnect_M00_AXI_AWPROT),
        .S_AXI_AWREADY(system_interconnect_M00_AXI_AWREADY),
        .S_AXI_AWVALID(system_interconnect_M00_AXI_AWVALID),
        .S_AXI_BREADY(system_interconnect_M00_AXI_BREADY),
        .S_AXI_BRESP(system_interconnect_M00_AXI_BRESP),
        .S_AXI_BVALID(system_interconnect_M00_AXI_BVALID),
        .S_AXI_RDATA(system_interconnect_M00_AXI_RDATA),
        .S_AXI_RREADY(system_interconnect_M00_AXI_RREADY),
        .S_AXI_RRESP(system_interconnect_M00_AXI_RRESP),
        .S_AXI_RVALID(system_interconnect_M00_AXI_RVALID),
        .S_AXI_WDATA({system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA}),
        .S_AXI_WREADY(system_interconnect_M00_AXI_WREADY),
        .S_AXI_WSTRB({system_interconnect_M00_AXI_WSTRB,system_interconnect_M00_AXI_WSTRB,system_interconnect_M00_AXI_WSTRB,system_interconnect_M00_AXI_WSTRB}),
        .S_AXI_WVALID(system_interconnect_M00_AXI_WVALID));
  top_level_util_ds_buf_0_0 bridge_input_clk
       (.IBUF_DS_N(pcie_refclk_clk_n),
        .IBUF_DS_ODIV2(util_ds_buf_0_IBUF_DS_ODIV2),
        .IBUF_DS_P(pcie_refclk_clk_p),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
  top_level_xdma_0_0 pcie_bridge
       (.axi_aclk(sys_clk),
        .axi_aresetn(pcie_bridge_axi_aresetn),
        .m_axib_araddr(pcie_bridge_M_AXI_B_ARADDR),
        .m_axib_arburst(pcie_bridge_M_AXI_B_ARBURST),
        .m_axib_arcache(pcie_bridge_M_AXI_B_ARCACHE),
        .m_axib_arid(pcie_bridge_M_AXI_B_ARID),
        .m_axib_arlen(pcie_bridge_M_AXI_B_ARLEN),
        .m_axib_arlock(pcie_bridge_M_AXI_B_ARLOCK),
        .m_axib_arprot(pcie_bridge_M_AXI_B_ARPROT),
        .m_axib_arready(pcie_bridge_M_AXI_B_ARREADY),
        .m_axib_arsize(pcie_bridge_M_AXI_B_ARSIZE),
        .m_axib_arvalid(pcie_bridge_M_AXI_B_ARVALID),
        .m_axib_awaddr(pcie_bridge_M_AXI_B_AWADDR),
        .m_axib_awburst(pcie_bridge_M_AXI_B_AWBURST),
        .m_axib_awcache(pcie_bridge_M_AXI_B_AWCACHE),
        .m_axib_awid(pcie_bridge_M_AXI_B_AWID),
        .m_axib_awlen(pcie_bridge_M_AXI_B_AWLEN),
        .m_axib_awlock(pcie_bridge_M_AXI_B_AWLOCK),
        .m_axib_awprot(pcie_bridge_M_AXI_B_AWPROT),
        .m_axib_awready(pcie_bridge_M_AXI_B_AWREADY),
        .m_axib_awsize(pcie_bridge_M_AXI_B_AWSIZE),
        .m_axib_awvalid(pcie_bridge_M_AXI_B_AWVALID),
        .m_axib_bid({pcie_bridge_M_AXI_B_BID,pcie_bridge_M_AXI_B_BID,pcie_bridge_M_AXI_B_BID,pcie_bridge_M_AXI_B_BID}),
        .m_axib_bready(pcie_bridge_M_AXI_B_BREADY),
        .m_axib_bresp(pcie_bridge_M_AXI_B_BRESP),
        .m_axib_bvalid(pcie_bridge_M_AXI_B_BVALID),
        .m_axib_rdata({pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA,pcie_bridge_M_AXI_B_RDATA}),
        .m_axib_rid({pcie_bridge_M_AXI_B_RID,pcie_bridge_M_AXI_B_RID,pcie_bridge_M_AXI_B_RID,pcie_bridge_M_AXI_B_RID}),
        .m_axib_rlast(pcie_bridge_M_AXI_B_RLAST),
        .m_axib_rready(pcie_bridge_M_AXI_B_RREADY),
        .m_axib_rresp(pcie_bridge_M_AXI_B_RRESP),
        .m_axib_rvalid(pcie_bridge_M_AXI_B_RVALID),
        .m_axib_wdata(pcie_bridge_M_AXI_B_WDATA),
        .m_axib_wlast(pcie_bridge_M_AXI_B_WLAST),
        .m_axib_wready(pcie_bridge_M_AXI_B_WREADY),
        .m_axib_wstrb(pcie_bridge_M_AXI_B_WSTRB),
        .m_axib_wvalid(pcie_bridge_M_AXI_B_WVALID),
        .pci_exp_rxn(pcie_mgt_rxn),
        .pci_exp_rxp(pcie_mgt_rxp),
        .pci_exp_txn(pcie_mgt_txn),
        .pci_exp_txp(pcie_mgt_txp),
        .s_axil_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_arprot({1'b0,1'b0,1'b0}),
        .s_axil_arvalid(1'b0),
        .s_axil_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_awprot({1'b0,1'b0,1'b0}),
        .s_axil_awvalid(1'b0),
        .s_axil_bready(1'b0),
        .s_axil_rready(1'b0),
        .s_axil_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axil_wvalid(1'b0),
        .sys_clk(util_ds_buf_0_IBUF_DS_ODIV2),
        .sys_clk_gt(util_ds_buf_0_IBUF_OUT),
        .sys_rst_n(sys_rst_n),
        .usr_irq_req(1'b0));
  top_level_smartconnect_0_0 system_interconnect
       (.M00_AXI_araddr(system_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arprot(system_interconnect_M00_AXI_ARPROT),
        .M00_AXI_arready(system_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(system_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(system_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awprot(system_interconnect_M00_AXI_AWPROT),
        .M00_AXI_awready(system_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(system_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bid(1'b0),
        .M00_AXI_bready(system_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(system_interconnect_M00_AXI_BRESP),
        .M00_AXI_buser(1'b0),
        .M00_AXI_bvalid(system_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(system_interconnect_M00_AXI_RDATA[0]),
        .M00_AXI_rid(1'b0),
        .M00_AXI_rlast(1'b0),
        .M00_AXI_rready(system_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(system_interconnect_M00_AXI_RRESP),
        .M00_AXI_ruser(1'b0),
        .M00_AXI_rvalid(system_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(system_interconnect_M00_AXI_WDATA),
        .M00_AXI_wready(system_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(system_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(system_interconnect_M00_AXI_WVALID),
        .M01_AXI_araddr(system_interconnect_M01_AXI_ARADDR),
        .M01_AXI_arprot(system_interconnect_M01_AXI_ARPROT),
        .M01_AXI_arready(system_interconnect_M01_AXI_ARREADY),
        .M01_AXI_arvalid(system_interconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(system_interconnect_M01_AXI_AWADDR),
        .M01_AXI_awprot(system_interconnect_M01_AXI_AWPROT),
        .M01_AXI_awready(system_interconnect_M01_AXI_AWREADY),
        .M01_AXI_awvalid(system_interconnect_M01_AXI_AWVALID),
        .M01_AXI_bid(1'b0),
        .M01_AXI_bready(system_interconnect_M01_AXI_BREADY),
        .M01_AXI_bresp(system_interconnect_M01_AXI_BRESP),
        .M01_AXI_buser(1'b0),
        .M01_AXI_bvalid(system_interconnect_M01_AXI_BVALID),
        .M01_AXI_rdata(system_interconnect_M01_AXI_RDATA[0]),
        .M01_AXI_rid(1'b0),
        .M01_AXI_rlast(1'b0),
        .M01_AXI_rready(system_interconnect_M01_AXI_RREADY),
        .M01_AXI_rresp(system_interconnect_M01_AXI_RRESP),
        .M01_AXI_ruser(1'b0),
        .M01_AXI_rvalid(system_interconnect_M01_AXI_RVALID),
        .M01_AXI_wdata(system_interconnect_M01_AXI_WDATA),
        .M01_AXI_wready(system_interconnect_M01_AXI_WREADY),
        .M01_AXI_wstrb(system_interconnect_M01_AXI_WSTRB),
        .M01_AXI_wvalid(system_interconnect_M01_AXI_WVALID),
        .S00_AXI_araddr(pcie_bridge_M_AXI_B_ARADDR[0]),
        .S00_AXI_arburst(pcie_bridge_M_AXI_B_ARBURST),
        .S00_AXI_arcache(pcie_bridge_M_AXI_B_ARCACHE),
        .S00_AXI_arid(pcie_bridge_M_AXI_B_ARID[0]),
        .S00_AXI_arlen(pcie_bridge_M_AXI_B_ARLEN[0]),
        .S00_AXI_arlock(pcie_bridge_M_AXI_B_ARLOCK),
        .S00_AXI_arprot(pcie_bridge_M_AXI_B_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(pcie_bridge_M_AXI_B_ARREADY),
        .S00_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize(pcie_bridge_M_AXI_B_ARSIZE),
        .S00_AXI_aruser(1'b0),
        .S00_AXI_arvalid(pcie_bridge_M_AXI_B_ARVALID),
        .S00_AXI_awaddr(pcie_bridge_M_AXI_B_AWADDR[0]),
        .S00_AXI_awburst(pcie_bridge_M_AXI_B_AWBURST),
        .S00_AXI_awcache(pcie_bridge_M_AXI_B_AWCACHE),
        .S00_AXI_awid(pcie_bridge_M_AXI_B_AWID[0]),
        .S00_AXI_awlen(pcie_bridge_M_AXI_B_AWLEN[0]),
        .S00_AXI_awlock(pcie_bridge_M_AXI_B_AWLOCK),
        .S00_AXI_awprot(pcie_bridge_M_AXI_B_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(pcie_bridge_M_AXI_B_AWREADY),
        .S00_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awsize(pcie_bridge_M_AXI_B_AWSIZE),
        .S00_AXI_awuser(1'b0),
        .S00_AXI_awvalid(pcie_bridge_M_AXI_B_AWVALID),
        .S00_AXI_bid(pcie_bridge_M_AXI_B_BID),
        .S00_AXI_bready(pcie_bridge_M_AXI_B_BREADY),
        .S00_AXI_bresp(pcie_bridge_M_AXI_B_BRESP),
        .S00_AXI_bvalid(pcie_bridge_M_AXI_B_BVALID),
        .S00_AXI_rdata(pcie_bridge_M_AXI_B_RDATA),
        .S00_AXI_rid(pcie_bridge_M_AXI_B_RID),
        .S00_AXI_rlast(pcie_bridge_M_AXI_B_RLAST),
        .S00_AXI_rready(pcie_bridge_M_AXI_B_RREADY),
        .S00_AXI_rresp(pcie_bridge_M_AXI_B_RRESP),
        .S00_AXI_rvalid(pcie_bridge_M_AXI_B_RVALID),
        .S00_AXI_wdata(pcie_bridge_M_AXI_B_WDATA[0]),
        .S00_AXI_wid(1'b0),
        .S00_AXI_wlast(pcie_bridge_M_AXI_B_WLAST),
        .S00_AXI_wready(pcie_bridge_M_AXI_B_WREADY),
        .S00_AXI_wstrb(pcie_bridge_M_AXI_B_WSTRB[0]),
        .S00_AXI_wuser(1'b0),
        .S00_AXI_wvalid(pcie_bridge_M_AXI_B_WVALID),
        .aclk(sys_clk),
        .aresetn(pcie_bridge_axi_aresetn));
endmodule

(* CORE_GENERATION_INFO = "top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_level,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=21,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=3,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "top_level.hwdef" *) 
module top_level
   (hbm_cattrip,
    pcie0_refclk_clk_n,
    pcie0_refclk_clk_p,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_perst_l,
    qsfp0_clk_clk_n,
    qsfp0_clk_clk_p,
    qsfp0_gt_grx_n,
    qsfp0_gt_grx_p,
    qsfp0_gt_gtx_n,
    qsfp0_gt_gtx_p,
    qsfp0_led,
    qsfp1_clk_clk_n,
    qsfp1_clk_clk_p,
    qsfp1_gt_grx_n,
    qsfp1_gt_grx_p,
    qsfp1_gt_gtx_n,
    qsfp1_gt_gtx_p,
    qsfp1_led);
  output [0:0]hbm_cattrip;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie0_refclk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie0_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie0_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie0_refclk CLK_P" *) input [0:0]pcie0_refclk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) (* X_INTERFACE_MODE = "Master" *) input [7:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [7:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [7:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [7:0]pcie_mgt_txp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE_PERST_L RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE_PERST_L, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input pcie_perst_l;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_clk, CAN_DEBUG false, FREQ_HZ 161132812" *) input qsfp0_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_clk CLK_P" *) input qsfp0_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_gt, CAN_DEBUG false" *) input [3:0]qsfp0_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GRX_P" *) input [3:0]qsfp0_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_N" *) output [3:0]qsfp0_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_gt GTX_P" *) output [3:0]qsfp0_gt_gtx_p;
  output [2:0]qsfp0_led;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_clk, CAN_DEBUG false, FREQ_HZ 161132812" *) input qsfp1_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_clk CLK_P" *) input qsfp1_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_gt, CAN_DEBUG false" *) input [3:0]qsfp1_gt_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GRX_P" *) input [3:0]qsfp1_gt_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_N" *) output [3:0]qsfp1_gt_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_gt GTX_P" *) output [3:0]qsfp1_gt_gtx_p;
  output [2:0]qsfp1_led;

  wire [0:0]hbm_cattrip;
  wire loopback_active_0;
  wire loopback_active_1;
  wire loopback_aligned;
  wire loopback_aligned1;
  wire [0:0]pcie0_refclk_clk_n;
  wire [0:0]pcie0_refclk_clk_p;
  wire [4:0]pcie_CMAC_TXDIFF;
  wire [4:0]pcie_CMAC_TXPOST;
  wire [4:0]pcie_CMAC_TXPRE;
  wire pcie_RSFEC_ENABLE;
  wire [7:0]pcie_mgt_rxn;
  wire [7:0]pcie_mgt_rxp;
  wire [7:0]pcie_mgt_txn;
  wire [7:0]pcie_mgt_txp;
  wire pcie_perst_l;
  wire pcie_resetn_out;
  wire pcie_sys_clk;
  wire qsfp0_clk_clk_n;
  wire qsfp0_clk_clk_p;
  wire [3:0]qsfp0_gt_grx_n;
  wire [3:0]qsfp0_gt_grx_p;
  wire [3:0]qsfp0_gt_gtx_n;
  wire [3:0]qsfp0_gt_gtx_p;
  wire [2:0]qsfp0_led;
  wire qsfp1_clk_clk_n;
  wire qsfp1_clk_clk_p;
  wire [3:0]qsfp1_gt_grx_n;
  wire [3:0]qsfp1_gt_grx_p;
  wire [3:0]qsfp1_gt_gtx_n;
  wire [3:0]qsfp1_gt_gtx_p;
  wire [2:0]qsfp1_led;

  loopback_imp_1EA56MH loopback
       (.active_0(loopback_active_0),
        .active_1(loopback_active_1),
        .aligned0(loopback_aligned),
        .aligned1(loopback_aligned1),
        .init_clk(pcie_sys_clk),
        .qsfp0_clk_clk_n(qsfp0_clk_clk_n),
        .qsfp0_clk_clk_p(qsfp0_clk_clk_p),
        .qsfp0_gt_grx_n(qsfp0_gt_grx_n),
        .qsfp0_gt_grx_p(qsfp0_gt_grx_p),
        .qsfp0_gt_gtx_n(qsfp0_gt_gtx_n),
        .qsfp0_gt_gtx_p(qsfp0_gt_gtx_p),
        .qsfp1_clk_clk_n(qsfp1_clk_clk_n),
        .qsfp1_clk_clk_p(qsfp1_clk_clk_p),
        .qsfp1_gt_grx_n(qsfp1_gt_grx_n),
        .qsfp1_gt_grx_p(qsfp1_gt_grx_p),
        .qsfp1_gt_gtx_n(qsfp1_gt_gtx_n),
        .qsfp1_gt_gtx_p(qsfp1_gt_gtx_p),
        .rsfec_enable(pcie_RSFEC_ENABLE),
        .sys_resetn(pcie_resetn_out),
        .tx_diff(pcie_CMAC_TXDIFF),
        .tx_post(pcie_CMAC_TXPOST),
        .tx_pre(pcie_CMAC_TXPRE));
  pcie_imp_P7FEFP pcie
       (.CMAC_TXDIFF(pcie_CMAC_TXDIFF),
        .CMAC_TXPOST(pcie_CMAC_TXPOST),
        .CMAC_TXPRE(pcie_CMAC_TXPRE),
        .RSFEC_ENABLE(pcie_RSFEC_ENABLE),
        .active0(loopback_active_0),
        .active1(loopback_active_1),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp),
        .pcie_refclk_clk_n(pcie0_refclk_clk_n),
        .pcie_refclk_clk_p(pcie0_refclk_clk_p),
        .resetn_out(pcie_resetn_out),
        .sys_clk(pcie_sys_clk),
        .sys_rst_n(pcie_perst_l));
  top_level_status_leds_0_0 status_leds
       (.active0(loopback_active_0),
        .active1(loopback_active_1),
        .qsfp0_led(qsfp0_led),
        .qsfp0_up(loopback_aligned),
        .qsfp1_led(qsfp1_led),
        .qsfp1_up(loopback_aligned1));
  assign hbm_cattrip = 1'h0;
endmodule
