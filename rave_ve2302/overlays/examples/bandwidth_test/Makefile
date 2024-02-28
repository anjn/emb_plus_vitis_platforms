# Copyright (C) 2023 Advanced Micro Devices, Inc.
# SPDX-License-Identifier: MIT

YEAR = $(shell date '+%Y')
MONTH = $(shell date '+%m')
VERSION = 1
CURDIR = $(shell pwd)
SRC = ./src
RM = rm -rf
MV = mv
BOARD_NAME = emb_plus

# Kernel name
KERNEL ?= bandwidth
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
	--temp_dir ./_x

# XSA file name

XSA_FILE = $(KERNEL).link.xsa


# Rules
.PHONY: all
all: $(SRC_FILE) $(KERNEL_XO) $(XSA_FILE)
$(KERNEL_XO): $(SRC_FILE)
	@mkdir -p $(@D)
	-@$(RM) $@
	$(VPP) $(VPP_XO_FLAGS) -o $@ $<
	-@$(RM) .Xil


$(XSA_FILE): $(KERNEL_XO)
	$(VPP) $(VPP_LINK_FLAGS) -o $@ $(+)
	-@$(RM) .Xill

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


