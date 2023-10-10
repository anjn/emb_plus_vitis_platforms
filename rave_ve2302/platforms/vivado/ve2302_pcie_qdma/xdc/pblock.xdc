# Copyright (C) 2023 Advanced Micro Devices, Inc.
# SPDX-License-Identifier: MIT

create_pblock pblock_ulp
add_cells_to_pblock [get_pblocks pblock_ulp] [get_cells -quiet [list ve2302_pcie_qdma_i/ulp]]
resize_pblock [get_pblocks pblock_ulp] -add {SLICE_X16Y147:SLICE_X99Y187 SLICE_X60Y75:SLICE_X75Y146}
resize_pblock [get_pblocks pblock_ulp] -add {BUFGCE_X2Y0:BUFGCE_X3Y23}
resize_pblock [get_pblocks pblock_ulp] -add {BUFGCE_DIV_X3Y0:BUFGCE_DIV_X3Y3}
resize_pblock [get_pblocks pblock_ulp] -add {BUFGCTRL_X3Y0:BUFGCTRL_X3Y7}
resize_pblock [get_pblocks pblock_ulp] -add {DPLL_X0Y0:DPLL_X1Y3}
resize_pblock [get_pblocks pblock_ulp] -add {DSP58_CPLX_X0Y66:DSP58_CPLX_X1Y93}
resize_pblock [get_pblocks pblock_ulp] -add {DSP_X0Y83:DSP_X1Y93 DSP_X0Y66:DSP_X3Y82}
resize_pblock [get_pblocks pblock_ulp] -add {GCLK_PD_X2Y96:GCLK_PD_X2Y143}
resize_pblock [get_pblocks pblock_ulp] -add {IRI_QUAD_X18Y524:IRI_QUAD_X66Y779 IRI_QUAD_X17Y556:IRI_QUAD_X17Y779 IRI_QUAD_X9Y524:IRI_QUAD_X10Y779}
resize_pblock [get_pblocks pblock_ulp] -add {MMCM_X2Y0:MMCM_X3Y0}
resize_pblock [get_pblocks pblock_ulp] -add {NOC_NMU512_X0Y1:NOC_NMU512_X0Y4}
resize_pblock [get_pblocks pblock_ulp] -add {RAMB18_X0Y84:RAMB18_X2Y95}
resize_pblock [get_pblocks pblock_ulp] -add {RAMB36_X0Y42:RAMB36_X2Y47}
resize_pblock [get_pblocks pblock_ulp] -add {URAM288_X0Y42:URAM288_X2Y47}
resize_pblock [get_pblocks pblock_ulp] -add {URAM_CAS_DLY_X0Y1:URAM_CAS_DLY_X2Y1}
resize_pblock [get_pblocks pblock_ulp] -add {CLOCKREGION_X0Y4:CLOCKREGION_X3Y4 CLOCKREGION_X0Y3:CLOCKREGION_X2Y3}
set_property SNAPPING_MODE ON [get_pblocks pblock_ulp]
set_property DONT_TOUCH true [get_cells */ulp]


# Lock NMU512 for blp
set_property LOC NOC_NMU512_X0Y0 [get_cells */blp/axi_noc_ic/inst/S00_AXI_nmu/*/NOC_NMU512_INST]


set_property LOCK_PINS {I0:A1 I1:A2 I2:A3} [get_cells */blp/dfx_decoupling/s_ip_axi_ctrl_user_00/inst/ar.ar_pipe/m_valid_i_i_1__1]
set_property LOCK_PINS {I0:A1 I1:A2 I2:A3 I3:A4} [get_cells */blp/dfx_decoupling/s_ip_axi_ctrl_user_00/inst/ar.ar_pipe/s_ready_i_i_1__2]
set_property LOCK_PINS {I0:A1 I1:A2 I2:A3} [get_cells */blp/dfx_decoupling/s_ip_axi_ctrl_user_00/inst/aw.aw_pipe/m_valid_i_i_1]
set_property LOCK_PINS {I0:A1 I1:A2 I2:A3 I3:A4} [get_cells */blp/dfx_decoupling/s_ip_axi_ctrl_user_00/inst/aw.aw_pipe/s_ready_i_i_2]
set_property LOCK_PINS {I0:A1 I1:A2 I2:A3} [get_cells */blp/dfx_decoupling/s_ip_axi_ctrl_user_00/inst/b.b_pipe/m_valid_i_i_2]
set_property LOCK_PINS {I0:A1 I1:A2 I2:A3 I3:A4} [get_cells */blp/dfx_decoupling/s_ip_axi_ctrl_user_00/inst/b.b_pipe/s_ready_i_i_1__1]
set_property LOCK_PINS {I0:A1 I1:A2 I2:A3} [get_cells */blp/dfx_decoupling/s_ip_axi_ctrl_user_00/inst/r.r_pipe/m_valid_i_i_1__2]
set_property LOCK_PINS {I0:A1 I1:A2 I2:A3 I3:A4} [get_cells */blp/dfx_decoupling/s_ip_axi_ctrl_user_00/inst/r.r_pipe/s_ready_i_i_1__3]
set_property LOCK_PINS {I0:A1 I1:A2 I2:A3} [get_cells */blp/dfx_decoupling/s_ip_axi_ctrl_user_00/inst/w.w_pipe/m_valid_i_i_1__0]
set_property LOCK_PINS {I0:A1 I1:A2 I2:A3 I3:A4} [get_cells */blp/dfx_decoupling/s_ip_axi_ctrl_user_00/inst/w.w_pipe/s_ready_i_i_1__0]
