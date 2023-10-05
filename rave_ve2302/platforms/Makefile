# Copyright (C) 2023 Advanced Micro Devices, Inc.
# SPDX-License-Identifier: MIT

CP = cp -rf
MKDIR = mkdir -p
RM = rm -rf
MV = mv
XSCT = $(XILINX_VITIS)/bin/xsct
JOBS ?= 8

PLATFORM ?= ve2302_pcie_qdma
VERSION ?= 202310_1

PFM_DIR = xilinx_$(PLATFORM)_$(VERSION)
PFM_PRJ_DIR = xsct/$(VIV_XSA_NAME)/$(VIV_XSA_NAME)/export/xilinx_$(PLATFORM)_$(PLATFORM)_1_0
PFM_SCRIPTS_DIR = scripts

PFM_TCL = $(PFM_SCRIPTS_DIR)/pfm.tcl
PFM_XPFM = $(PFM_DIR)/$(PLATFORM).xpfm

VIV_DIR = vivado/$(PLATFORM)
VIV_XSA_NAME = $(PLATFORM)
VIV_XSA = $(VIV_DIR)/project/$(VIV_XSA_NAME).xsa

.PHONY: help
help:
	@echo 'Usage:'
	@echo ''
	@echo '  make platform'
	@echo '    Generate Vitis platform'
	@echo ''

.PHONY: all
all: platform

.PHONY: platform
platform: $(PFM_XPFM)
$(PFM_XPFM): $(VIV_XSA)
	$(XSCT) $(PFM_TCL) -xsa $(VIV_XSA)
	@$(CP) $(PFM_PRJ_DIR) $(PFM_DIR)
# Added MV command because the name of the xpfm is not what we're looking for (not sure why)
	@$(MV) $(PFM_DIR)/*.xpfm $(PFM_DIR)/$(PLATFORM).xpfm
	@echo 'Vitis platform available at $(PFM_DIR)'

$(VIV_XSA):
	make -C $(VIV_DIR) xsa JOBS=$(JOBS)

.PHONY: clean
clean:
	-@$(RM) .Xil boot image linux.bif ws $(PFM_DIR) xsct
	make -C $(VIV_DIR) clean

