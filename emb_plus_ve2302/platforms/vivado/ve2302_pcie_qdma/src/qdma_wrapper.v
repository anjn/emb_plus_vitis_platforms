// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module qdma_wrapper(axi_aclk, axi_aresetn, usr_irq_in_vld, 
  usr_irq_in_vec, usr_irq_in_fnc, usr_irq_out_ack, usr_irq_out_fail, tm_dsc_sts_vld, 
  tm_dsc_sts_port_id, tm_dsc_sts_qen, tm_dsc_sts_byp, tm_dsc_sts_dir, tm_dsc_sts_mm, 
  tm_dsc_sts_error, tm_dsc_sts_qid, tm_dsc_sts_avl, tm_dsc_sts_qinv, tm_dsc_sts_irq_arm, 
  tm_dsc_sts_rdy, tm_dsc_sts_pidx, dsc_crdt_in_crdt, dsc_crdt_in_qid, dsc_crdt_in_dir, 
  dsc_crdt_in_fence, dsc_crdt_in_vld, dsc_crdt_in_rdy, m_axi_awready, m_axi_wready, 
  m_axi_bid, m_axi_bresp, m_axi_bvalid, m_axi_arready, m_axi_rid, m_axi_rdata, m_axi_rresp, 
  m_axi_rlast, m_axi_rvalid, m_axi_awid, m_axi_awaddr, m_axi_awuser, m_axi_awlen, m_axi_awsize, 
  m_axi_awburst, m_axi_awprot, m_axi_awvalid, m_axi_awlock, m_axi_awcache, m_axi_wdata, 
  m_axi_wuser, m_axi_wstrb, m_axi_wlast, m_axi_wvalid, m_axi_bready, m_axi_arid, m_axi_araddr, 
  m_axi_aruser, m_axi_arlen, m_axi_arsize, m_axi_arburst, m_axi_arprot, m_axi_arvalid, 
  m_axi_arlock, m_axi_arcache, m_axi_rready, m_axil_awaddr, m_axil_awuser, m_axil_awprot, 
  m_axil_awvalid, m_axil_awready, m_axil_wdata, m_axil_wstrb, m_axil_wvalid, m_axil_wready, 
  m_axil_bvalid, m_axil_bresp, m_axil_bready, m_axil_araddr, m_axil_aruser, m_axil_arprot, 
  m_axil_arvalid, m_axil_arready, m_axil_rdata, m_axil_rresp, m_axil_rvalid, m_axil_rready, 
  cfg_mgmt_addr_sd, cfg_mgmt_write_sd, cfg_mgmt_function_number_sd, 
  cfg_mgmt_write_data_sd, cfg_mgmt_byte_enable_sd, cfg_mgmt_read_sd, 
  cfg_mgmt_read_data_sd, cfg_mgmt_read_write_done_sd, cfg_mgmt_type1_cfg_reg_access_sd, 
  m_axib_awid, m_axib_awaddr, m_axib_awlen, m_axib_awuser, m_axib_awsize, m_axib_awburst, 
  m_axib_awprot, m_axib_awvalid, m_axib_awready, m_axib_awlock, m_axib_awcache, m_axib_wdata, 
  m_axib_wstrb, m_axib_wlast, m_axib_wvalid, m_axib_wready, m_axib_bid, m_axib_bresp, 
  m_axib_bvalid, m_axib_bready, m_axib_arid, m_axib_araddr, m_axib_arlen, m_axib_aruser, 
  m_axib_arsize, m_axib_arburst, m_axib_arprot, m_axib_arvalid, m_axib_arready, 
  m_axib_arlock, m_axib_arcache, m_axib_rid, m_axib_rdata, m_axib_rresp, m_axib_rlast, 
  m_axib_rvalid, m_axib_rready, csr_prog_done, s_axil_csr_awaddr, s_axil_csr_awprot, 
  s_axil_csr_awvalid, s_axil_csr_awready, s_axil_csr_wdata, s_axil_csr_wstrb, 
  s_axil_csr_wvalid, s_axil_csr_wready, s_axil_csr_bvalid, s_axil_csr_bresp, 
  s_axil_csr_bready, s_axil_csr_araddr, s_axil_csr_arprot, s_axil_csr_arvalid, 
  s_axil_csr_arready, s_axil_csr_rdata, s_axil_csr_rresp, s_axil_csr_rvalid, 
  s_axil_csr_rready, cfg_ltssm_state_sd, user_lnk_up_sd, phy_rdy_out_sd, 
  cfg_function_status_sd, cfg_max_read_req_sd, cfg_max_payload_sd, cfg_flr_done_sd, 
  s_axis_rq_tdata_sd, s_axis_rq_tlast_sd, s_axis_rq_tuser_sd, s_axis_rq_tkeep_sd, 
  s_axis_rq_tready_sd, s_axis_rq_tvalid_sd, m_axis_rc_tdata_sd, m_axis_rc_tuser_sd, 
  m_axis_rc_tlast_sd, m_axis_rc_tkeep_sd, m_axis_rc_tvalid_sd, m_axis_rc_tready_sd, 
  m_axis_cq_tdata_sd, m_axis_cq_tuser_sd, m_axis_cq_tlast_sd, m_axis_cq_tkeep_sd, 
  m_axis_cq_tvalid_sd, m_axis_cq_tready_sd, s_axis_cc_tdata_sd, s_axis_cc_tuser_sd, 
  s_axis_cc_tlast_sd, s_axis_cc_tkeep_sd, s_axis_cc_tvalid_sd, s_axis_cc_tready_sd, 
  user_clk_sd, user_reset_sd, pcie_cq_np_req_sd, pcie_cq_np_req_count_sd, 
  pcie_tfc_nph_av_sd, pcie_tfc_npd_av_sd, pcie_rq_seq_num_vld0_sd, pcie_rq_seq_num0_sd, 
  pcie_rq_seq_num_vld1_sd, pcie_rq_seq_num1_sd, cfg_fc_nph_sd, cfg_fc_ph_sd, cfg_fc_sel_sd, 
  cfg_fc_nph_scale_sd, cfg_phy_link_down_sd, cfg_phy_link_status_sd, 
  cfg_negotiated_width_sd, cfg_current_speed_sd, cfg_pl_status_change_sd, 
  cfg_hot_reset_out_sd, cfg_bus_number_sd, cfg_ds_port_number_sd, cfg_ds_bus_number_sd, 
  cfg_ds_device_number_sd, cfg_ds_function_number_sd, cfg_err_uncor_in_sd, 
  cfg_err_cor_in_sd, cfg_config_space_enable_sd, cfg_link_training_enable_sd, 
  cfg_vf_status_sd, cfg_dsn_sd, cfg_interrupt_int_sd, cfg_interrupt_sent_sd, 
  cfg_interrupt_pending_sd, cfg_interrupt_msi_function_number_sd, 
  cfg_interrupt_msi_sent_sd, cfg_interrupt_msi_fail_sd, cfg_interrupt_msix_int_sd, 
  cfg_interrupt_msix_data_sd, cfg_interrupt_msix_address_sd, 
  cfg_interrupt_msix_enable_sd, cfg_interrupt_msix_mask_sd, 
  cfg_interrupt_msix_vf_enable_sd, cfg_interrupt_msix_vf_mask_sd, 
  cfg_interrupt_msix_vec_pending_sd, cfg_interrupt_msix_vec_pending_status_sd, 
  cfg_tph_requester_enable_sd, cfg_vf_tph_requester_enable_sd, cfg_err_cor_out_sd, 
  cfg_err_nonfatal_out_sd, cfg_err_fatal_out_sd, cfg_local_error_out_sd, 
  cfg_msg_received_sd, cfg_msg_received_data_sd, cfg_msg_received_type_sd, 
  cfg_msg_transmit_sd, cfg_msg_transmit_type_sd, cfg_msg_transmit_data_sd, 
  cfg_msg_transmit_done_sd, soft_reset_n, qsts_out_op, qsts_out_data, qsts_out_port_id, 
  qsts_out_qid, qsts_out_vld, qsts_out_rdy,
// Added
cfg_flr_in_process_sd,
cfg_vf_flr_in_process_sd

);
// Added
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie_cfg_control_if flr_in_process" *)
input wire [3 : 0] cfg_flr_in_process_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie_cfg_control_if vf_flr_in_process" *)
input wire [239 : 0] cfg_vf_flr_in_process_sd;


(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.axi_aclk, ASSOCIATED_BUSIF M_AXI:S_AXI_BRIDGE:M_AXI_LITE:S_AXI_LITE:S_AXI_LITE_CSR:M_AXI_BRIDGE:sc0_ats_m_axis_cq:sc0_ats_m_axis_rc:sc0_ats_s_axis_cc:sc0_ats_s_axis_rq:sc1_ats_m_axis_cq:sc1_ats_m_axis_rc:sc1_ats_s_axis_cc:sc1_ats_s_axis_rq:cxs_rx:cxs_tx, ASSOCIATED_RESET axi_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.axi_aclk CLK" *)
output wire axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.axi_aresetn RST" *)
output wire axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_irq:1.0 usr_irq valid" *)
input wire usr_irq_in_vld;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_irq:1.0 usr_irq vec" *)
input wire [10 : 0] usr_irq_in_vec;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_irq:1.0 usr_irq fnc" *)
input wire [7 : 0] usr_irq_in_fnc;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_irq:1.0 usr_irq ack" *)
output wire usr_irq_out_ack;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:usr_irq:1.0 usr_irq fail" *)
output wire usr_irq_out_fail;
//(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:tm_dsc_sts:1.0 tm_dsc_sts valid" *)
output wire tm_dsc_sts_vld;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:tm_dsc_sts:1.0 tm_dsc_sts port_id" *)
output wire [2 : 0] tm_dsc_sts_port_id;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:tm_dsc_sts:1.0 tm_dsc_sts qen" *)
output wire tm_dsc_sts_qen;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:tm_dsc_sts:1.0 tm_dsc_sts byp" *)
output wire tm_dsc_sts_byp;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:tm_dsc_sts:1.0 tm_dsc_sts dir" *)
output wire tm_dsc_sts_dir;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:tm_dsc_sts:1.0 tm_dsc_sts mm" *)
output wire tm_dsc_sts_mm;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:tm_dsc_sts:1.0 tm_dsc_sts error" *)
output wire tm_dsc_sts_error;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:tm_dsc_sts:1.0 tm_dsc_sts qid" *)
output wire [10 : 0] tm_dsc_sts_qid;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:tm_dsc_sts:1.0 tm_dsc_sts avl" *)
output wire [15 : 0] tm_dsc_sts_avl;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:tm_dsc_sts:1.0 tm_dsc_sts qinv" *)
output wire tm_dsc_sts_qinv;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:tm_dsc_sts:1.0 tm_dsc_sts irq_arm" *)
output wire tm_dsc_sts_irq_arm;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:tm_dsc_sts:1.0 tm_dsc_sts rdy" *)
input wire tm_dsc_sts_rdy;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:tm_dsc_sts:1.0 tm_dsc_sts pidx" *)
output wire [15 : 0] tm_dsc_sts_pidx;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:dsc_crdt_in:1.0 dsc_crdt_in crdt" *)
input wire [15 : 0] dsc_crdt_in_crdt;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:dsc_crdt_in:1.0 dsc_crdt_in qid" *)
input wire [10 : 0] dsc_crdt_in_qid;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:dsc_crdt_in:1.0 dsc_crdt_in dir" *)
input wire dsc_crdt_in_dir;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:dsc_crdt_in:1.0 dsc_crdt_in fence" *)
input wire dsc_crdt_in_fence;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:dsc_crdt_in:1.0 dsc_crdt_in valid" *)
input wire dsc_crdt_in_vld;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:dsc_crdt_in:1.0 dsc_crdt_in rdy" *)
output wire dsc_crdt_in_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *)
input wire m_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *)
input wire m_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BID" *)
input wire [3 : 0] m_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *)
input wire [1 : 0] m_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *)
input wire m_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *)
input wire m_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RID" *)
input wire [3 : 0] m_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *)
input wire [255 : 0] m_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *)
input wire [1 : 0] m_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *)
input wire m_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *)
input wire m_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWID" *)
output wire [3 : 0] m_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *)
output wire [63 : 0] m_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWUSER" *)
output wire [31 : 0] m_axi_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *)
output wire [7 : 0] m_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *)
output wire [2 : 0] m_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *)
output wire [1 : 0] m_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *)
output wire [2 : 0] m_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *)
output wire m_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *)
output wire m_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *)
output wire [3 : 0] m_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *)
output wire [255 : 0] m_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WUSER" *)
output wire [31 : 0] m_axi_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *)
output wire [31 : 0] m_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *)
output wire m_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *)
output wire m_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *)
output wire m_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARID" *)
output wire [3 : 0] m_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *)
output wire [63 : 0] m_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARUSER" *)
output wire [31 : 0] m_axi_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *)
output wire [7 : 0] m_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *)
output wire [2 : 0] m_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *)
output wire [1 : 0] m_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *)
output wire [2 : 0] m_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *)
output wire m_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *)
output wire m_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *)
output wire [3 : 0] m_axi_arcache;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, FREQ_HZ 250000000, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, SUPPORTS_NARROW_BURST 0, HAS_BURST 0, HAS_BURST.VALUE_SRC CONSTANT, DATA_WIDTH 256, PROTOCOL AXI4, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 32, ARUSER_WIDTH 32, WUSER_WIDTH 32, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, MAX_BURST_LENGTH 256, PHASE 0\
.0, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *)
output wire m_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE AWADDR" *)
output wire [31 : 0] m_axil_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE AWUSER" *)
output wire [54 : 0] m_axil_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE AWPROT" *)
output wire [2 : 0] m_axil_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE AWVALID" *)
output wire m_axil_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE AWREADY" *)
input wire m_axil_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE WDATA" *)
output wire [31 : 0] m_axil_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE WSTRB" *)
output wire [3 : 0] m_axil_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE WVALID" *)
output wire m_axil_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE WREADY" *)
input wire m_axil_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE BVALID" *)
input wire m_axil_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE BRESP" *)
input wire [1 : 0] m_axil_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE BREADY" *)
output wire m_axil_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE ARADDR" *)
output wire [31 : 0] m_axil_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE ARUSER" *)
output wire [54 : 0] m_axil_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE ARPROT" *)
output wire [2 : 0] m_axil_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE ARVALID" *)
output wire m_axil_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE ARREADY" *)
input wire m_axil_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE RDATA" *)
input wire [31 : 0] m_axil_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE RRESP" *)
input wire [1 : 0] m_axil_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE RVALID" *)
input wire m_axil_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_LITE, FREQ_HZ 250000000, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 55, ARUSER_WIDTH 55, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, \
WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE RREADY" *)
output wire m_axil_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie_cfg_mgmt_if ADDR" *)
output wire [9 : 0] cfg_mgmt_addr_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie_cfg_mgmt_if WRITE_EN" *)
output wire cfg_mgmt_write_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie_cfg_mgmt_if FUNCTION_NUMBER" *)
output wire [7 : 0] cfg_mgmt_function_number_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie_cfg_mgmt_if WRITE_DATA" *)
output wire [31 : 0] cfg_mgmt_write_data_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie_cfg_mgmt_if BYTE_EN" *)
output wire [3 : 0] cfg_mgmt_byte_enable_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie_cfg_mgmt_if READ_EN" *)
output wire cfg_mgmt_read_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie_cfg_mgmt_if READ_DATA" *)
input wire [31 : 0] cfg_mgmt_read_data_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie_cfg_mgmt_if READ_WRITE_DONE" *)
input wire cfg_mgmt_read_write_done_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_mgmt:1.0 pcie_cfg_mgmt_if DEBUG_ACCESS" *)
output wire cfg_mgmt_type1_cfg_reg_access_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE AWID" *)
output wire [3 : 0] m_axib_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE AWADDR" *)
output wire [63 : 0] m_axib_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE AWLEN" *)
output wire [7 : 0] m_axib_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE AWUSER" *)
output wire [54 : 0] m_axib_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE AWSIZE" *)
output wire [2 : 0] m_axib_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE AWBURST" *)
output wire [1 : 0] m_axib_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE AWPROT" *)
output wire [2 : 0] m_axib_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE AWVALID" *)
output wire m_axib_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE AWREADY" *)
input wire m_axib_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE AWLOCK" *)
output wire m_axib_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE AWCACHE" *)
output wire [3 : 0] m_axib_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE WDATA" *)
output wire [255 : 0] m_axib_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE WSTRB" *)
output wire [31 : 0] m_axib_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE WLAST" *)
output wire m_axib_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE WVALID" *)
output wire m_axib_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE WREADY" *)
input wire m_axib_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE BID" *)
input wire [3 : 0] m_axib_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE BRESP" *)
input wire [1 : 0] m_axib_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE BVALID" *)
input wire m_axib_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE BREADY" *)
output wire m_axib_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE ARID" *)
output wire [3 : 0] m_axib_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE ARADDR" *)
output wire [63 : 0] m_axib_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE ARLEN" *)
output wire [7 : 0] m_axib_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE ARUSER" *)
output wire [54 : 0] m_axib_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE ARSIZE" *)
output wire [2 : 0] m_axib_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE ARBURST" *)
output wire [1 : 0] m_axib_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE ARPROT" *)
output wire [2 : 0] m_axib_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE ARVALID" *)
output wire m_axib_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE ARREADY" *)
input wire m_axib_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE ARLOCK" *)
output wire m_axib_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE ARCACHE" *)
output wire [3 : 0] m_axib_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE RID" *)
input wire [3 : 0] m_axib_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE RDATA" *)
input wire [255 : 0] m_axib_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE RRESP" *)
input wire [1 : 0] m_axib_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE RLAST" *)
input wire m_axib_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE RVALID" *)
input wire m_axib_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_BRIDGE, FREQ_HZ 250000000, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, HAS_BURST 0, HAS_BURST.VALUE_SRC CONSTANT, DATA_WIDTH 256, PROTOCOL AXI4, ID_WIDTH 4, ADDR_WIDTH 64, AWUSER_WIDTH 55, ARUSER_WIDTH 55, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, MAX_BURST_LENGTH 256, P\
HASE 0.0, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_BRIDGE RREADY" *)
output wire m_axib_rready;
output wire csr_prog_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR AWADDR" *)
input wire [31 : 0] s_axil_csr_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR AWPROT" *)
input wire [2 : 0] s_axil_csr_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR AWVALID" *)
input wire s_axil_csr_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR AWREADY" *)
output wire s_axil_csr_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR WDATA" *)
input wire [31 : 0] s_axil_csr_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR WSTRB" *)
input wire [3 : 0] s_axil_csr_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR WVALID" *)
input wire s_axil_csr_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR WREADY" *)
output wire s_axil_csr_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR BVALID" *)
output wire s_axil_csr_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR BRESP" *)
output wire [1 : 0] s_axil_csr_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR BREADY" *)
input wire s_axil_csr_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR ARADDR" *)
input wire [31 : 0] s_axil_csr_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR ARPROT" *)
input wire [2 : 0] s_axil_csr_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR ARVALID" *)
input wire s_axil_csr_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR ARREADY" *)
output wire s_axil_csr_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR RDATA" *)
output wire [31 : 0] s_axil_csr_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR RRESP" *)
output wire [1 : 0] s_axil_csr_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR RVALID" *)
output wire s_axil_csr_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_LITE_CSR, FREQ_HZ 250000000, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0\
, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CSR RREADY" *)
input wire s_axil_csr_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if ltssm_state" *)
input wire [5 : 0] cfg_ltssm_state_sd;
input wire user_lnk_up_sd;
input wire phy_rdy_out_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if function_status" *)
input wire [15 : 0] cfg_function_status_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if max_read_req" *)
input wire [2 : 0] cfg_max_read_req_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if max_payload" *)
input wire [1 : 0] cfg_max_payload_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie_cfg_control_if flr_done" *)
output wire [3 : 0] cfg_flr_done_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TDATA" *)
output wire [255 : 0] s_axis_rq_tdata_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TLAST" *)
output wire s_axis_rq_tlast_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TUSER" *)
output wire [61 : 0] s_axis_rq_tuser_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TKEEP" *)
output wire [7 : 0] s_axis_rq_tkeep_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TREADY" *)
input wire [3 : 0] s_axis_rq_tready_sd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_rq, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 62, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rq TVALID" *)
output wire s_axis_rq_tvalid_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TDATA" *)
input wire [255 : 0] m_axis_rc_tdata_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TUSER" *)
input wire [74 : 0] m_axis_rc_tuser_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TLAST" *)
input wire m_axis_rc_tlast_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TKEEP" *)
input wire [7 : 0] m_axis_rc_tkeep_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TVALID" *)
input wire m_axis_rc_tvalid_sd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rc, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 75, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rc TREADY" *)
output wire m_axis_rc_tready_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TDATA" *)
input wire [255 : 0] m_axis_cq_tdata_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TUSER" *)
input wire [87 : 0] m_axis_cq_tuser_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TLAST" *)
input wire m_axis_cq_tlast_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TKEEP" *)
input wire [7 : 0] m_axis_cq_tkeep_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TVALID" *)
input wire m_axis_cq_tvalid_sd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_cq, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 88, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_cq TREADY" *)
output wire m_axis_cq_tready_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TDATA" *)
output wire [255 : 0] s_axis_cc_tdata_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TUSER" *)
output wire [32 : 0] s_axis_cc_tuser_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TLAST" *)
output wire s_axis_cc_tlast_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TKEEP" *)
output wire [7 : 0] s_axis_cc_tkeep_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TVALID" *)
output wire s_axis_cc_tvalid_sd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_cc, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 33, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_cc TREADY" *)
input wire [3 : 0] s_axis_cc_tready_sd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.user_clk, ASSOCIATED_BUSIF m_axis_cq:s_axis_cc:s_axis_rq:m_axis_rc, ASSOCIATED_RESET user_reset, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.user_clk CLK" *)
input wire user_clk_sd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.user_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.user_reset RST" *)
input wire user_reset_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if cq_np_req" *)
output wire [1 : 0] pcie_cq_np_req_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if cq_np_req_count" *)
input wire [5 : 0] pcie_cq_np_req_count_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_transmit_fc:1.0 pcie_transmit_fc_if nph_av" *)
input wire [3 : 0] pcie_tfc_nph_av_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_transmit_fc:1.0 pcie_transmit_fc_if npd_av" *)
input wire [3 : 0] pcie_tfc_npd_av_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if rq_seq_num_vld0" *)
input wire pcie_rq_seq_num_vld0_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if rq_seq_num0" *)
input wire [5 : 0] pcie_rq_seq_num0_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if rq_seq_num_vld1" *)
input wire pcie_rq_seq_num_vld1_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if rq_seq_num1" *)
input wire [5 : 0] pcie_rq_seq_num1_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie_cfg_fc NPH" *)
input wire [7 : 0] cfg_fc_nph_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie_cfg_fc PH" *)
input wire [7 : 0] cfg_fc_ph_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie_cfg_fc SEL" *)
output wire [2 : 0] cfg_fc_sel_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_cfg_fc:1.1 pcie_cfg_fc NPH_SCALE" *)
input wire [1 : 0] cfg_fc_nph_scale_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if phy_link_down" *)
input wire cfg_phy_link_down_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if phy_link_status" *)
input wire [1 : 0] cfg_phy_link_status_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if negotiated_width" *)
input wire [2 : 0] cfg_negotiated_width_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if current_speed" *)
input wire [1 : 0] cfg_current_speed_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if pl_status_change" *)
input wire cfg_pl_status_change_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie_cfg_control_if hot_reset_out" *)
input wire cfg_hot_reset_out_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie_cfg_control_if bus_number" *)
input wire [7 : 0] cfg_bus_number_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie_cfg_control_if ds_port_number" *)
output wire [7 : 0] cfg_ds_port_number_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie_cfg_control_if ds_bus_number" *)
output wire [7 : 0] cfg_ds_bus_number_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie_cfg_control_if ds_device_number" *)
output wire [4 : 0] cfg_ds_device_number_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie_cfg_control_if ds_function_number" *)
output wire [2 : 0] cfg_ds_function_number_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie_cfg_control_if err_uncor_in" *)
output wire cfg_err_uncor_in_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie_cfg_control_if err_cor_in" *)
output wire cfg_err_cor_in_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie_cfg_control_if config_space_enable" *)
output wire cfg_config_space_enable_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie_cfg_control_if link_training_enable" *)
output wire cfg_link_training_enable_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if vf_status" *)
input wire [503 : 0] cfg_vf_status_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_control:1.0 pcie_cfg_control_if dsn" *)
output wire [63 : 0] cfg_dsn_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie_cfg_interrupt INTx_VECTOR" *)
output wire [3 : 0] cfg_interrupt_int_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie_cfg_interrupt SENT" *)
input wire cfg_interrupt_sent_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie_cfg_interrupt PENDING" *)
output wire [3 : 0] cfg_interrupt_pending_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix:1.0 pcie_cfg_external_msix_without_msi_if function_number" *)
output wire [7 : 0] cfg_interrupt_msi_function_number_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix:1.0 pcie_cfg_external_msix_without_msi_if sent" *)
input wire cfg_interrupt_msi_sent_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix:1.0 pcie_cfg_external_msix_without_msi_if fail" *)
input wire cfg_interrupt_msi_fail_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix:1.0 pcie_cfg_external_msix_without_msi_if int_vector" *)
output wire cfg_interrupt_msix_int_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix:1.0 pcie_cfg_external_msix_without_msi_if data" *)
output wire [31 : 0] cfg_interrupt_msix_data_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix:1.0 pcie_cfg_external_msix_without_msi_if address" *)
output wire [63 : 0] cfg_interrupt_msix_address_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix:1.0 pcie_cfg_external_msix_without_msi_if enable" *)
input wire [3 : 0] cfg_interrupt_msix_enable_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix:1.0 pcie_cfg_external_msix_without_msi_if mask" *)
input wire [3 : 0] cfg_interrupt_msix_mask_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix:1.0 pcie_cfg_external_msix_without_msi_if vf_enable" *)
input wire [251 : 0] cfg_interrupt_msix_vf_enable_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix:1.0 pcie_cfg_external_msix_without_msi_if vf_mask" *)
input wire [251 : 0] cfg_interrupt_msix_vf_mask_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix:1.0 pcie_cfg_external_msix_without_msi_if vec_pending" *)
output wire [1 : 0] cfg_interrupt_msix_vec_pending_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie4_cfg_msix:1.0 pcie_cfg_external_msix_without_msi_if vec_pending_status" *)
input wire cfg_interrupt_msix_vec_pending_status_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if tph_requester_enable" *)
input wire [3 : 0] cfg_tph_requester_enable_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if vf_tph_requester_enable" *)
input wire [251 : 0] cfg_vf_tph_requester_enable_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if err_cor_out" *)
input wire cfg_err_cor_out_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if err_nonfatal_out" *)
input wire cfg_err_nonfatal_out_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if err_fatal_out" *)
input wire cfg_err_fatal_out_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie5_cfg_status:1.0 pcie_cfg_status_if local_error_out" *)
input wire [4 : 0] cfg_local_error_out_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msg_received:1.0 pcie_cfg_mesg_rcvd recd" *)
input wire cfg_msg_received_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msg_received:1.0 pcie_cfg_mesg_rcvd recd_data" *)
input wire [7 : 0] cfg_msg_received_data_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msg_received:1.0 pcie_cfg_mesg_rcvd recd_type" *)
input wire [4 : 0] cfg_msg_received_type_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie_cfg_mesg_tx TRANSMIT" *)
output wire cfg_msg_transmit_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie_cfg_mesg_tx TRANSMIT_TYPE" *)
output wire [2 : 0] cfg_msg_transmit_type_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie_cfg_mesg_tx TRANSMIT_DATA" *)
output wire [31 : 0] cfg_msg_transmit_data_sd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_mesg_tx:1.0 pcie_cfg_mesg_tx TRANSMIT_DONE" *)
input wire cfg_msg_transmit_done_sd;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.soft_reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.soft_reset_n RST" *)
input wire soft_reset_n;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:qsts_out:1.0 qsts_out op" *)
output wire [7 : 0] qsts_out_op;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:qsts_out:1.0 qsts_out data" *)
output wire [63 : 0] qsts_out_data;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:qsts_out:1.0 qsts_out port_id" *)
output wire [2 : 0] qsts_out_port_id;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:qsts_out:1.0 qsts_out qid" *)
output wire [12 : 0] qsts_out_qid;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:qsts_out:1.0 qsts_out vld" *)
output wire qsts_out_vld;
(* X_INTERFACE_INFO = "xilinx.com:display_eqdma:qsts_out:1.0 qsts_out rdy" *)
input wire qsts_out_rdy;

qdma inst (
	.axi_aclk(axi_aclk),
	.axi_aresetn(axi_aresetn),
	.usr_irq_in_vld(usr_irq_in_vld),
	.usr_irq_in_vec(usr_irq_in_vec),
	.usr_irq_in_fnc(usr_irq_in_fnc),
	.usr_irq_out_ack(usr_irq_out_ack),
	.usr_irq_out_fail(usr_irq_out_fail),
	.tm_dsc_sts_vld(tm_dsc_sts_vld),
	.tm_dsc_sts_port_id(tm_dsc_sts_port_id),
	.tm_dsc_sts_qen(tm_dsc_sts_qen),
	.tm_dsc_sts_byp(tm_dsc_sts_byp),
	.tm_dsc_sts_dir(tm_dsc_sts_dir),
	.tm_dsc_sts_mm(tm_dsc_sts_mm),
	.tm_dsc_sts_error(tm_dsc_sts_error),
	.tm_dsc_sts_qid(tm_dsc_sts_qid),
	.tm_dsc_sts_avl(tm_dsc_sts_avl),
	.tm_dsc_sts_qinv(tm_dsc_sts_qinv),
	.tm_dsc_sts_irq_arm(tm_dsc_sts_irq_arm),
	.tm_dsc_sts_rdy(tm_dsc_sts_rdy),
	.tm_dsc_sts_pidx(tm_dsc_sts_pidx),
	.dsc_crdt_in_crdt(dsc_crdt_in_crdt),
	.dsc_crdt_in_qid(dsc_crdt_in_qid),
	.dsc_crdt_in_dir(dsc_crdt_in_dir),
	.dsc_crdt_in_fence(dsc_crdt_in_fence),
	.dsc_crdt_in_vld(dsc_crdt_in_vld),
	.dsc_crdt_in_rdy(dsc_crdt_in_rdy),
	.m_axi_awready(m_axi_awready),
	.m_axi_wready(m_axi_wready),
	.m_axi_bid(m_axi_bid),
	.m_axi_bresp(m_axi_bresp),
	.m_axi_bvalid(m_axi_bvalid),
	.m_axi_arready(m_axi_arready),
	.m_axi_rid(m_axi_rid),
	.m_axi_rdata(m_axi_rdata),
	.m_axi_rresp(m_axi_rresp),
	.m_axi_rlast(m_axi_rlast),
	.m_axi_rvalid(m_axi_rvalid),
	.m_axi_awid(m_axi_awid),
	.m_axi_awaddr(m_axi_awaddr),
	.m_axi_awuser(m_axi_awuser),
	.m_axi_awlen(m_axi_awlen),
	.m_axi_awsize(m_axi_awsize),
	.m_axi_awburst(m_axi_awburst),
	.m_axi_awprot(m_axi_awprot),
	.m_axi_awvalid(m_axi_awvalid),
	.m_axi_awlock(m_axi_awlock),
	.m_axi_awcache(m_axi_awcache),
	.m_axi_wdata(m_axi_wdata),
	.m_axi_wuser(m_axi_wuser),
	.m_axi_wstrb(m_axi_wstrb),
	.m_axi_wlast(m_axi_wlast),
	.m_axi_wvalid(m_axi_wvalid),
	.m_axi_bready(m_axi_bready),
	.m_axi_arid(m_axi_arid),
	.m_axi_araddr(m_axi_araddr),
	.m_axi_aruser(m_axi_aruser),
	.m_axi_arlen(m_axi_arlen),
	.m_axi_arsize(m_axi_arsize),
	.m_axi_arburst(m_axi_arburst),
	.m_axi_arprot(m_axi_arprot),
	.m_axi_arvalid(m_axi_arvalid),
	.m_axi_arlock(m_axi_arlock),
	.m_axi_arcache(m_axi_arcache),
	.m_axi_rready(m_axi_rready),
	.m_axil_awaddr(m_axil_awaddr),
	.m_axil_awuser(m_axil_awuser),
	.m_axil_awprot(m_axil_awprot),
	.m_axil_awvalid(m_axil_awvalid),
	.m_axil_awready(m_axil_awready),
	.m_axil_wdata(m_axil_wdata),
	.m_axil_wstrb(m_axil_wstrb),
	.m_axil_wvalid(m_axil_wvalid),
	.m_axil_wready(m_axil_wready),
	.m_axil_bvalid(m_axil_bvalid),
	.m_axil_bresp(m_axil_bresp),
	.m_axil_bready(m_axil_bready),
	.m_axil_araddr(m_axil_araddr),
	.m_axil_aruser(m_axil_aruser),
	.m_axil_arprot(m_axil_arprot),
	.m_axil_arvalid(m_axil_arvalid),
	.m_axil_arready(m_axil_arready),
	.m_axil_rdata(m_axil_rdata),
	.m_axil_rresp(m_axil_rresp),
	.m_axil_rvalid(m_axil_rvalid),
	.m_axil_rready(m_axil_rready),
	.cfg_mgmt_addr_sd(cfg_mgmt_addr_sd),
	.cfg_mgmt_write_sd(cfg_mgmt_write_sd),
	.cfg_mgmt_function_number_sd(cfg_mgmt_function_number_sd),
	.cfg_mgmt_write_data_sd(cfg_mgmt_write_data_sd),
	.cfg_mgmt_byte_enable_sd(cfg_mgmt_byte_enable_sd),
	.cfg_mgmt_read_sd(cfg_mgmt_read_sd),
	.cfg_mgmt_read_data_sd(cfg_mgmt_read_data_sd),
	.cfg_mgmt_read_write_done_sd(cfg_mgmt_read_write_done_sd),
	.cfg_mgmt_type1_cfg_reg_access_sd(cfg_mgmt_type1_cfg_reg_access_sd),
	.m_axib_awid(m_axib_awid),
	.m_axib_awaddr(m_axib_awaddr),
	.m_axib_awlen(m_axib_awlen),
	.m_axib_awuser(m_axib_awuser),
	.m_axib_awsize(m_axib_awsize),
	.m_axib_awburst(m_axib_awburst),
	.m_axib_awprot(m_axib_awprot),
	.m_axib_awvalid(m_axib_awvalid),
	.m_axib_awready(m_axib_awready),
	.m_axib_awlock(m_axib_awlock),
	.m_axib_awcache(m_axib_awcache),
	.m_axib_wdata(m_axib_wdata),
	.m_axib_wstrb(m_axib_wstrb),
	.m_axib_wlast(m_axib_wlast),
	.m_axib_wvalid(m_axib_wvalid),
	.m_axib_wready(m_axib_wready),
	.m_axib_bid(m_axib_bid),
	.m_axib_bresp(m_axib_bresp),
	.m_axib_bvalid(m_axib_bvalid),
	.m_axib_bready(m_axib_bready),
	.m_axib_arid(m_axib_arid),
	.m_axib_araddr(m_axib_araddr),
	.m_axib_arlen(m_axib_arlen),
	.m_axib_aruser(m_axib_aruser),
	.m_axib_arsize(m_axib_arsize),
	.m_axib_arburst(m_axib_arburst),
	.m_axib_arprot(m_axib_arprot),
	.m_axib_arvalid(m_axib_arvalid),
	.m_axib_arready(m_axib_arready),
	.m_axib_arlock(m_axib_arlock),
	.m_axib_arcache(m_axib_arcache),
	.m_axib_rid(m_axib_rid),
	.m_axib_rdata(m_axib_rdata),
	.m_axib_rresp(m_axib_rresp),
	.m_axib_rlast(m_axib_rlast),
	.m_axib_rvalid(m_axib_rvalid),
	.m_axib_rready(m_axib_rready),
	.csr_prog_done(csr_prog_done),
	.s_axil_csr_awaddr(s_axil_csr_awaddr),
	.s_axil_csr_awprot(s_axil_csr_awprot),
	.s_axil_csr_awvalid(s_axil_csr_awvalid),
	.s_axil_csr_awready(s_axil_csr_awready),
	.s_axil_csr_wdata(s_axil_csr_wdata),
	.s_axil_csr_wstrb(s_axil_csr_wstrb),
	.s_axil_csr_wvalid(s_axil_csr_wvalid),
	.s_axil_csr_wready(s_axil_csr_wready),
	.s_axil_csr_bvalid(s_axil_csr_bvalid),
	.s_axil_csr_bresp(s_axil_csr_bresp),
	.s_axil_csr_bready(s_axil_csr_bready),
	.s_axil_csr_araddr(s_axil_csr_araddr),
	.s_axil_csr_arprot(s_axil_csr_arprot),
	.s_axil_csr_arvalid(s_axil_csr_arvalid),
	.s_axil_csr_arready(s_axil_csr_arready),
	.s_axil_csr_rdata(s_axil_csr_rdata),
	.s_axil_csr_rresp(s_axil_csr_rresp),
	.s_axil_csr_rvalid(s_axil_csr_rvalid),
	.s_axil_csr_rready(s_axil_csr_rready),
	.cfg_ltssm_state_sd(cfg_ltssm_state_sd),
	.user_lnk_up_sd(user_lnk_up_sd),
	.phy_rdy_out_sd(phy_rdy_out_sd),
	.cfg_function_status_sd(cfg_function_status_sd),
	.cfg_max_read_req_sd(cfg_max_read_req_sd),
	.cfg_max_payload_sd(cfg_max_payload_sd),
	.cfg_flr_done_sd(cfg_flr_done_sd),
	.s_axis_rq_tdata_sd(s_axis_rq_tdata_sd),
	.s_axis_rq_tlast_sd(s_axis_rq_tlast_sd),
	.s_axis_rq_tuser_sd(s_axis_rq_tuser_sd),
	.s_axis_rq_tkeep_sd(s_axis_rq_tkeep_sd),
	.s_axis_rq_tready_sd(s_axis_rq_tready_sd),
	.s_axis_rq_tvalid_sd(s_axis_rq_tvalid_sd),
	.m_axis_rc_tdata_sd(m_axis_rc_tdata_sd),
	.m_axis_rc_tuser_sd(m_axis_rc_tuser_sd),
	.m_axis_rc_tlast_sd(m_axis_rc_tlast_sd),
	.m_axis_rc_tkeep_sd(m_axis_rc_tkeep_sd),
	.m_axis_rc_tvalid_sd(m_axis_rc_tvalid_sd),
	.m_axis_rc_tready_sd(m_axis_rc_tready_sd),
	.m_axis_cq_tdata_sd(m_axis_cq_tdata_sd),
	.m_axis_cq_tuser_sd(m_axis_cq_tuser_sd),
	.m_axis_cq_tlast_sd(m_axis_cq_tlast_sd),
	.m_axis_cq_tkeep_sd(m_axis_cq_tkeep_sd),
	.m_axis_cq_tvalid_sd(m_axis_cq_tvalid_sd),
	.m_axis_cq_tready_sd(m_axis_cq_tready_sd),
	.s_axis_cc_tdata_sd(s_axis_cc_tdata_sd),
	.s_axis_cc_tuser_sd(s_axis_cc_tuser_sd),
	.s_axis_cc_tlast_sd(s_axis_cc_tlast_sd),
	.s_axis_cc_tkeep_sd(s_axis_cc_tkeep_sd),
	.s_axis_cc_tvalid_sd(s_axis_cc_tvalid_sd),
	.s_axis_cc_tready_sd(s_axis_cc_tready_sd),
	.user_clk_sd(user_clk_sd),
	.user_reset_sd(user_reset_sd),
	.pcie_cq_np_req_sd(pcie_cq_np_req_sd),
	.pcie_cq_np_req_count_sd(pcie_cq_np_req_count_sd),
	.pcie_tfc_nph_av_sd(pcie_tfc_nph_av_sd),
	.pcie_tfc_npd_av_sd(pcie_tfc_npd_av_sd),
	.pcie_rq_seq_num_vld0_sd(pcie_rq_seq_num_vld0_sd),
	.pcie_rq_seq_num0_sd(pcie_rq_seq_num0_sd),
	.pcie_rq_seq_num_vld1_sd(pcie_rq_seq_num_vld1_sd),
	.pcie_rq_seq_num1_sd(pcie_rq_seq_num1_sd),
	.cfg_fc_nph_sd(cfg_fc_nph_sd),
	.cfg_fc_ph_sd(cfg_fc_ph_sd),
	.cfg_fc_sel_sd(cfg_fc_sel_sd),
	.cfg_fc_nph_scale_sd(cfg_fc_nph_scale_sd),
	.cfg_phy_link_down_sd(cfg_phy_link_down_sd),
	.cfg_phy_link_status_sd(cfg_phy_link_status_sd),
	.cfg_negotiated_width_sd(cfg_negotiated_width_sd),
	.cfg_current_speed_sd(cfg_current_speed_sd),
	.cfg_pl_status_change_sd(cfg_pl_status_change_sd),
	.cfg_hot_reset_out_sd(cfg_hot_reset_out_sd),
	.cfg_bus_number_sd(cfg_bus_number_sd),
	.cfg_ds_port_number_sd(cfg_ds_port_number_sd),
	.cfg_ds_bus_number_sd(cfg_ds_bus_number_sd),
	.cfg_ds_device_number_sd(cfg_ds_device_number_sd),
	.cfg_ds_function_number_sd(cfg_ds_function_number_sd),
	.cfg_err_uncor_in_sd(cfg_err_uncor_in_sd),
	.cfg_err_cor_in_sd(cfg_err_cor_in_sd),
	.cfg_config_space_enable_sd(cfg_config_space_enable_sd),
	.cfg_link_training_enable_sd(cfg_link_training_enable_sd),
	.cfg_vf_status_sd(cfg_vf_status_sd),
	.cfg_dsn_sd(cfg_dsn_sd),
	.cfg_interrupt_int_sd(cfg_interrupt_int_sd),
	.cfg_interrupt_sent_sd(cfg_interrupt_sent_sd),
	.cfg_interrupt_pending_sd(cfg_interrupt_pending_sd),
	.cfg_interrupt_msi_function_number_sd(cfg_interrupt_msi_function_number_sd),
	.cfg_interrupt_msi_sent_sd(cfg_interrupt_msi_sent_sd),
	.cfg_interrupt_msi_fail_sd(cfg_interrupt_msi_fail_sd),
	.cfg_interrupt_msix_int_sd(cfg_interrupt_msix_int_sd),
	.cfg_interrupt_msix_data_sd(cfg_interrupt_msix_data_sd),
	.cfg_interrupt_msix_address_sd(cfg_interrupt_msix_address_sd),
	.cfg_interrupt_msix_enable_sd(cfg_interrupt_msix_enable_sd),
	.cfg_interrupt_msix_mask_sd(cfg_interrupt_msix_mask_sd),
	.cfg_interrupt_msix_vf_enable_sd(cfg_interrupt_msix_vf_enable_sd),
	.cfg_interrupt_msix_vf_mask_sd(cfg_interrupt_msix_vf_mask_sd),
	.cfg_interrupt_msix_vec_pending_sd(cfg_interrupt_msix_vec_pending_sd),
	.cfg_interrupt_msix_vec_pending_status_sd(cfg_interrupt_msix_vec_pending_status_sd),
	.cfg_tph_requester_enable_sd(cfg_tph_requester_enable_sd),
	.cfg_vf_tph_requester_enable_sd(cfg_vf_tph_requester_enable_sd),
	.cfg_err_cor_out_sd(cfg_err_cor_out_sd),
	.cfg_err_nonfatal_out_sd(cfg_err_nonfatal_out_sd),
	.cfg_err_fatal_out_sd(cfg_err_fatal_out_sd),
	.cfg_local_error_out_sd(cfg_local_error_out_sd),
	.cfg_msg_received_sd(cfg_msg_received_sd),
	.cfg_msg_received_data_sd(cfg_msg_received_data_sd),
	.cfg_msg_received_type_sd(cfg_msg_received_type_sd),
	.cfg_msg_transmit_sd(cfg_msg_transmit_sd),
	.cfg_msg_transmit_type_sd(cfg_msg_transmit_type_sd),
	.cfg_msg_transmit_data_sd(cfg_msg_transmit_data_sd),
	.cfg_msg_transmit_done_sd(cfg_msg_transmit_done_sd),
	.soft_reset_n(soft_reset_n),
	.qsts_out_op(qsts_out_op),
	.qsts_out_data(qsts_out_data),
	.qsts_out_port_id(qsts_out_port_id),
	.qsts_out_qid(qsts_out_qid),
	.qsts_out_vld(qsts_out_vld),
	.qsts_out_rdy(qsts_out_rdy)
);

endmodule

