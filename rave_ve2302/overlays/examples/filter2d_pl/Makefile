# Copyright (C) 2023 Advanced Micro Devices, Inc.
# SPDX-License-Identifier: MIT

RM = rm -rf
MV = mv

# v++ flags
VPP ?= v++
PLATFORM ?=
LINK_CFG ?= kernel.cfg
JOBS ?= 32
VPP_LINK_FLAGS = -l -t hw --platform $(PLATFORM) --save-temps \
	--report_level estimate -j $(JOBS) --config $(LINK_CFG)
XBU = xclbinutil
XBU_FLAGS = --remove-section BITSTREAM --force

# kernels and xclbin
KERNEL_OBJS += kernel/filter2d_pl_accel/filter2d_pl_accel.xo
BINARY_CONTAINER = binary_container_1.xclbin
XSA_FILE = binary_container_1.xsa
CLK_FREQ = 299996999

# Rules
.PHONY: all
all: $(KERNEL_OBJS) $(XSA_FILE)

$(XSA_FILE): $(KERNEL_OBJS)
	$(VPP) $(VPP_LINK_FLAGS) -o $@ $(+)
	-@$(RM) .Xil

$(KERNEL_OBJS):
	$(MAKE) -C kernel FREQ=$(CLK_FREQ)

.PHONY: clean clean-subdirs
clean: clean-subdirs
	-$(RM) _xocc* .Xil _x *.o *.xclbin *.BIN *.bif *.pdi
	-$(RM) .Xil _sds *.xml *.dat *.hpfm iprepo *.xtxt *.xsa
	-$(RM) sd_card *.log *.rpt .ipcache
	-$(RM) *.info .crashReporter kernel/.crashReporter
	-$(RM) *.link_summary* *.package_summary* *.ltx

clean-subdirs:
	$(MAKE) -C kernel clean
