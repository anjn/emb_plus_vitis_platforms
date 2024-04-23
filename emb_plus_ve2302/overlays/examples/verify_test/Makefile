# Copyright (C) 2023 Advanced Micro Devices, Inc.
# SPDX-License-Identifier: MIT

YEAR = $(shell date '+%Y')
MONTH = $(shell date '+%m')
VERSION = 1.0
CURDIR = $(shell pwd)
SRC = ./src
RM = rm -rf
MV = mv

# Kernel name
KERNEL ?= verify
KERNEL_XO = $(KERNEL).xo
SRC_FILE = $(SRC)/$(KERNEL).cpp

# v++ flags
VPP = v++
KERNEL_XO_FLAGS = -k $(KERNEL)
PLATFORM ?=
JOBS ?= 32
VPP_XO_FLAGS = -c -t hw --platform $(PLATFORM) --save-temps \
	-j $(JOBS) $(KERNEL_XO_FLAGS) \
	--temp_dir ./_x \

VPP_LINK_FLAGS = -l -t hw --platform $(PLATFORM) --save-temps \
	--report_level estimate -j $(JOBS) \
	--temp_dir ./_x \

# XSA file name
XSA_FILE = $(KERNEL).xsa

# deb package script location
SILICON ?= prod
MAINTAINER = AMD
BOARD = ve2302
ifeq ($(SILICON),es1)
	BUILD_DIR = xrt-$(KERNEL)-test-$(BOARD)-$(SILICON)
	DEB_DIR = $(BUILD_DIR)/opt/xilinx/firmware/emb_plus/ve2302_pcie_qdma-$(SILICON)/base/test/
else
	BUILD_DIR = xrt-$(KERNEL)-test-$(BOARD)
	DEB_DIR = $(BUILD_DIR)/opt/xilinx/firmware/emb_plus/ve2302_pcie_qdma/base/test/
endif 
PKGNAME = $(BUILD_DIR)_$(VERSION)
CONTROL_FILE = $(BUILD_DIR)/DEBIAN/control
CONTROL_CONTENT = "Package: $(BUILD_DIR)\nArchitecture: all\nVersion: $(VERSION)\nPriority: optional\nDescription: $(KERNEL) firmware\nMaintainer: $(MAINTAINER)\n"
DEB_FILE = $(PKGNAME).deb
TEMP_DIR = _x
BINARY_CONTAINER = $(TEMP_DIR)/link/int/$(KERNEL).xclbin

# Rules
.PHONY: all
all: $(SRC_FILE) $(KERNEL_XO) $(XSA_FILE) $(DEB_FILE)

$(KERNEL_XO): $(SRC_FILE)
	@mkdir -p $(@D)
	-@$(RM) $@
	$(VPP) $(VPP_XO_FLAGS) -o $@ $<
	-@$(RM) .Xil

.PHONY: xclbin
xclbin: $(BINARY_CONTAINER)
$(BINARY_CONTAINER): $(XSA_FILE)
$(XSA_FILE): $(KERNEL_XO)
	$(VPP) $(VPP_LINK_FLAGS) -o $@ $(+)
	-@$(RM) .Xill

.PHONY: deb
deb: $(DEB_FILE)
$(DEB_FILE): $(BINARY_CONTAINER)
	mkdir -p $(DEB_DIR)
	cp $^ $(DEB_DIR)
	mkdir -p $(BUILD_DIR)/DEBIAN
	@echo -e $(CONTROL_CONTENT) > $(CONTROL_FILE)
	@echo "Now generating the debian package"
	dpkg-deb --build ./$(BUILD_DIR)
	mv $(BUILD_DIR).deb $(DEB_FILE)

.PHONY: help
help:
	@echo "Makefile Usage:"
	@echo "make all PLATFORM= <xpfm_file_location>"
	@echo "Command to build xclbin application"
	@echo ""
	@echo "make clean"
	@echo "Command to remove the generated files. "
	@echo ""


.PHONY: clean
clean:
	-$(RM) $(KERNEL_XO) *.log _x $(KERNEL_XO).compile_summary
	-$(RM) _xocc* .Xil _x *.o *.xclbin
	-$(RM) .Xil _sds *.xml *.dat *.hpfm iprepo *.xtxt *.xsa
	-$(RM) *.info .crashReporter .ipcache
	-$(RM) ./_x.*
	-$(RM) *.link_summary* *.package_summary* *.ltx
	-$(RM) $(BUILD_DIR) $(DEB_FILE)




