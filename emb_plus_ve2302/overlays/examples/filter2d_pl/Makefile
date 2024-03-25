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
XCLBIN_FILE = _x/link/int/$(BINARY_CONTAINER)
XSA_FILE = binary_container_1.xsa
CLK_FREQ = 299996999


## deb package script location
VERSION = 1.0
SILICON ?= prod
MAINTAINER = AMD
BOARD = ve2302
EXAMPLE = filter2d-pl
CONTROL_FILE = $(BUILD_DIR)/DEBIAN/control
BUILD_DIR = $(EXAMPLE)-$(BOARD)-$(SILICON)
CONTROL_CONTENT = "Package: $(BUILD_DIR)\nArchitecture: all\nVersion: $(VERSION)\nPriority: optional\nDescription: $(EXAMPLE) firmware\nMaintainer: $(MAINTAINER)\n"
PKGNAME = $(BUILD_DIR)_$(VERSION)
DEB_FILE = $(PKGNAME).deb

# Rules
.PHONY: all
all: $(KERNEL_OBJS) $(XSA_FILE) $(DEB_FILE)

.PHONY: xclbin
xclbin: $(XCLBIN_FILE)
$(XCLBIN_FILE): $(XSA_FILE)
$(XSA_FILE): $(KERNEL_OBJS)
	$(VPP) $(VPP_LINK_FLAGS) -o $@ $(+)
	-@$(RM) .Xil

$(KERNEL_OBJS):
	$(MAKE) -C kernel FREQ=$(CLK_FREQ)

.PHONY: deb
deb: $(DEB_FILE)
$(DEB_FILE): $(XCLBIN_FILE)
	mkdir -p $(BUILD_DIR)/opt/xilinx/$(EXAMPLE)
	mkdir -p $(BUILD_DIR)/DEBIAN
	cp $^ $(BUILD_DIR)/opt/xilinx/$(EXAMPLE)/
	@echo -e $(CONTROL_CONTENT) > $(CONTROL_FILE)
	@echo "Now generating the debian package"
	dpkg-deb --build ./$(BUILD_DIR)
	mv $(BUILD_DIR).deb $(DEB_FILE)

.PHONY: clean clean-subdirs
clean: clean-subdirs
	-$(RM) _xocc* .Xil _x *.o *.xclbin *.BIN *.bif *.pdi
	-$(RM) .Xil _sds *.xml *.dat *.hpfm iprepo *.xtxt *.xsa
	-$(RM) sd_card *.log *.rpt .ipcache
	-$(RM) *.info .crashReporter kernel/.crashReporter
	-$(RM) *.link_summary* *.package_summary* *.ltx
	-$(RM) $(BUILD_DIR) $(DEB_FILE)

clean-subdirs:
	$(MAKE) -C kernel clean
