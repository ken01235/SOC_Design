#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf


XILINX_VITIS ?= /tools/Xilinx/Vitis/2022.1

VPP ?= ${XILINX_VITIS}/bin/v++




VITIS_PLATFORM = xilinx_u50_gen3x16_xdma_5_202210_1
VITIS_PLATFORM_DIR = /home/ubuntu/Downloads/data/opt/xilinx/platforms/xilinx_u50_gen3x16_xdma_5_202210_1
VITIS_PLATFORM_PATH = $(VITIS_PLATFORM_DIR)/xilinx_u50_gen3x16_xdma_5_202210_1.xpfm


#
# variables
#


#
# primary build targets
#

package:
	-@echo $(VPP) --package --config package.cfg  ../../vts_Opt1Baseline_system_hw_link/Emulation-SW/binary_container_1.xclbin -o binary_container_1.xclbin
	-@$(VPP) --package --config package.cfg  ../../vts_Opt1Baseline_system_hw_link/Emulation-SW/binary_container_1.xclbin -o binary_container_1.xclbin
	cp -f binary_container_1.xclbin ../../vts_Opt1Baseline/Emulation-SW


clean:
	$(RMDIR) ./package.build
	${RMDIR} package

.PHONY: all package clean

all: package


