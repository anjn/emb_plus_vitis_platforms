# Copyright (C) 2023 Advanced Micro Devices, Inc.
# SPDX-License-Identifier: MIT

YEAR = $(shell date '+%Y')
MONTH = $(shell date '+%m')
VERSION = 1

CURDIR = $(shell pwd)
SRC = $(CURDIR)/src

RM = rm -rf
MV = mv

PLATFORM ?=

PLATFORM_NAME = $(strip $(patsubst %.xpfm, % , $(shell basename $(PLATFORM))))


include utils.mk

# v++ flags
VPP = v++
MK_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
CUR_DIR := $(patsubst %/,%,$(dir $(MK_PATH)))
SRC_DIR = .

# setting devault value
TARGET ?= hw


TEMP_DIR := _x
TEMP_REPORT_DIR := $(CUR_DIR)/reports/_x
BUILD_REPORT_DIR := $(CUR_DIR)/reports
XCLBIN_DIR := $(CUR_DIR)/$(BUILD_DIR)
export XCL_BINDIR = $(XCLBIN_DIR)
BINARY_CONTAINERS_DEPS :=

VPP_FLAGS += --save-temps
VPP_LDFLAGS += --optimize 2 -R 2
VPP_FLAGS += $(EXTRA_VPP_FLAGS)

# aie template
XILINX_VITIS_AIETOOLS ?=

ifneq ($(wildcard $(XILINX_VITIS)/aietools/.*),)
XILINX_VITIS_AIETOOLS := $(XILINX_VITIS)/aietools
else
XILINX_VITIS_AIETOOLS := $(XILINX_VITIS)/cardano
endif

# Setting customized_params in aiecompiler

############################ setting AIE Compiler ###########################

AIETARGET := hw
AIE_CXXFLAGS += --target=$(AIETARGET) --platform=$(PLATFORM) --pl-freq=1000
AIE_CXXFLAGS += -I $(XILINX_VITIS_AIETOOLS)/include
AIE_CONTAINER = $(TEMP_DIR)/libadf.a
AIE_CXXFLAGS += -I $(SRC_DIR)/aie
AIE_CXXFLAGS += -I $(SRC_DIR)/aie/kernels
AIE_CXXFLAGS += -I $(SRC_DIR)/pl_kernels
AIE_CXXFLAGS += --Xpreproc=-DAIE_CORE_COL=16
BINARY_CONTAINERS_DEPS += $(AIE_CONTAINER)


########################## Kernel compiler global settings ##########################
VPP_FLAGS +=  -I $(SRC_DIR)/pl_kernels -I $(XILINX_VITIS)/aietools/include
VPP_LDFLAGS +=  --config $(CUR_DIR)/system.cfg
######################### binary container global settings ##########################
VPP_FLAGS_pl_controller_top += --verbose
VPP_FLAGS_pl_controller_top += --hls.clock 250000000:pl_controller_top
VPP_FLAGS_sender_receiver += --verbose
VPP_FLAGS_sender_receiver += --hls.clock 250000000:sender_receiver
VPP_LDFLAGS_emb_plus_pl_controller.xclbin += --kernel_frequency 250
BINARY_CONTAINERS += pl_controller.xsa
BINARY_CONTAINERS_PKG += pl_controller_aie.xclbin


PL_CONT_XO_FILE = $(TEMP_DIR)/pl_controller_top.xo
SEND_REC_XO_FILE = $(TEMP_DIR)/sender_receiver.xo

############################## Setting Targets ##############################

.PHONY: all xclbin
all: xclbin
xclbin:  $(BINARY_CONTAINERS)
$(BINARY_CONTAINERS): $(PL_CONT_XO_FILE) $(SEND_REC_XO_FILE) $(AIE_CONTAINER)
	$(VPP) -l $(VPP_FLAGS) -t $(TARGET) --platform $(PLATFORM) --temp_dir $(TEMP_DIR) --report_dir $(BUILD_REPORT_DIR) $(VPP_LDFLAGS)  $(VPP_LDFLAGS_emb_plus_pl_controller.xclbin) -o $@ $^



################ Setting Rules for Binary Containers (Building Kernels) ################
$(PL_CONT_XO_FILE): $(SRC_DIR)/pl_kernels/pl_controller_top.cpp
	$(ECHO) "Compiling Kernel: pl_controller_top"
	mkdir -p $(TEMP_DIR)
	$(VPP) -c $(VPP_FLAGS_pl_controller_top) $(VPP_FLAGS) -t $(TARGET) --platform $(PLATFORM) -k pl_controller_top -I'$(<D)' --temp_dir $(TEMP_DIR) --report_dir $(TEMP_REPORT_DIR) -o'$@' '$<'
BINARY_CONTAINER_emb_plus_pl_controller.xclbin_OBJS += $(TEMP_DIR)/pl_controller_top.xo


$(SEND_REC_XO_FILE): $(SRC_DIR)/pl_kernels/sender_receiver.cpp
	$(ECHO) "Compiling Kernel: sender_receiver"
	mkdir -p $(TEMP_DIR)
	$(VPP) -c $(VPP_FLAGS_sender_receiver) $(VPP_FLAGS) -t $(TARGET) --platform $(PLATFORM) -k sender_receiver -I'$(<D)' --temp_dir $(TEMP_DIR) --report_dir $(TEMP_REPORT_DIR) -o'$@' '$<'
BINARY_CONTAINER_emb_plus_pl_controller.xclbin_OBJS += $(TEMP_DIR)/sender_receiver.xo
BINARY_CONTAINERS_DEPS += $(BINARY_CONTAINER_emb_plus_pl_controller.xclbin_OBJS)
BINARY_CONTAINERS_DEPS += $(AIE_CONTAINER)




$(AIE_CONTAINER): $(SRC_DIR)/aie/graph.cpp
	$(ECHO) "Compiling: libadf.a"
	mkdir -p $(dir $@)
	$(AIECXX) $(AIE_CXXFLAGS) $^
	cp ./libadf.a $(AIE_CONTAINER)



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
	-$(RMDIR) *xclbin.run_summary pl*start_simulation. sh *.xclbin
	-$(RMDIR)  xo_* _x*
	-$(RMDIR) .Xil .ipcache .crashReporter
	-$(RMDIR) $(CUR_DIR)/libadf.a  *.csv *.log sol.db
	-$(RMDIR) .nfs* *.xsa *.ltx *.link_summary
	-$(RMDIR) $(CUR_DIR)/Work  $(CUR_DIR)/reports $(BUILD_DIR)

