# Copyright (C) 2023, Advanced Micro Devices, Inc.
# SPDX-License-Identifier: MIT

RM = rm -rf
VIVADO = $(XILINX_VIVADO)/bin/vivado
JOBS ?= 8
PYTHON = python3

VIV_DESIGN = ve2302_pcie_qdma

VIV_PRJ_DIR = project
VIV_SCRIPTS_DIR = scripts

VIV_XSA = $(VIV_PRJ_DIR)/$(VIV_DESIGN).xsa
VIV_SRC = $(VIV_SCRIPTS_DIR)/main.tcl
VIV_CONFIG = $(VIV_SCRIPTS_DIR)/config_bd.tcl
VIV_PDI = $(VIV_PRJ_DIR)/$(VIV_DESIGN).runs/impl_1/$(VIV_DESIGN)_i_ulp_ulp_inst_0_partial.pdi

META_JSON =  $(VIV_PRJ_DIR)/partition_metadata.json
META_PY = $(VIV_SCRIPTS_DIR)/partition_metadata_gen_script.py

VIV_TIMING_ERROR = "CRITICAL WARNING: \[Timing 38-282\] The design failed to meet the timing requirements"

RESIZE_DIR = ip/resize
RESIZE_PRJ = $(RESIZE_DIR)/resize.prj

.PHONY: help
help:
	@echo 'Usage:'
	@echo ''
	@echo '  make xsa'
	@echo '    Generate extensible xsa for platform generation'
	@echo ''

.PHONY: all
all: xsa

xsa: $(VIV_XSA)
$(VIV_XSA): $(VIV_SRC) $(VIV_CONFIG)
	$(VIVADO) -mode batch -notrace -source $(VIV_SRC) -tclargs -jobs $(JOBS)
	@grep $(VIV_TIMING_ERROR) vivado.log; if [ $$? = 0 ]; then exit 1; fi
	$(PYTHON) $(META_PY) -config $(VIV_CONFIG) -pdi $(VIV_PDI) -o $(META_JSON)
	zip -u $(VIV_PRJ_DIR)/$(VIV_DESIGN)_base.xsa $(META_JSON)

.PHONY: clean
clean:
	$(RM) $(VIV_PRJ_DIR) vivado* .Xil *dynamic* *.log *.xpe .crashReporter hd_visual *.swp uuid_data.txt

