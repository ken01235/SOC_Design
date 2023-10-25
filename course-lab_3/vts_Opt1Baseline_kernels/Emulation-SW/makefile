#
# this file was created by a computer. trust it.
#

# compiler tools
XILINX_VITIS ?= /tools/Xilinx/Vitis/2022.1
XILINX_XRT ?= 
XILINX_VIVADO ?= /tools/Xilinx/Vivado/2022.1
XILINX_HLS ?= $(XILINX_VITIS)/Vivado_HLS

VPP ?= ${XILINX_VITIS}/bin/v++
RM = rm -f
RMDIR = rm -rf

VITIS_PLATFORM = xilinx_u50_gen3x16_xdma_5_202210_1
VITIS_PLATFORM_DIR = /home/ubuntu/Downloads/data/opt/xilinx/platforms/xilinx_u50_gen3x16_xdma_5_202210_1
VITIS_PLATFORM_PATH = $(VITIS_PLATFORM_DIR)/xilinx_u50_gen3x16_xdma_5_202210_1.xpfm

TARGET = sw_emu
VPP_OPTS = --target $(TARGET)

#
# Hw kernel files
#


BUILD_SUBDIRS += build
HW_KERNEL_OBJS += build/KA.xo
SRC_KERNEL_OBJS += build/KA.xo
BUILD_SUBDIRS += build
HW_KERNEL_OBJS += build/KB.xo
SRC_KERNEL_OBJS += build/KB.xo
BUILD_SUBDIRS += build
HW_KERNEL_OBJS += build/KCalc.xo
SRC_KERNEL_OBJS += build/KCalc.xo
BUILD_SUBDIRS += build
HW_KERNEL_OBJS += build/KVConstAdd.xo
SRC_KERNEL_OBJS += build/KVConstAdd.xo
BUILD_SUBDIRS += build
HW_KERNEL_OBJS += build/KpB.xo
SRC_KERNEL_OBJS += build/KpB.xo

ALL_MESSAGE_FILES = $(subst .xo,.o,.mdb,$(SRC_KERNEL_OBJS))

#
# primary build targets
#

.PHONY: all clean
all: $(HW_KERNEL_OBJS)


clean:
	-$(RM) $(SRC_KERNEL_OBJS) $(ALL_MESSAGE_FILES) 
	-$(RMDIR) $(BUILD_SUBDIRS)
	-$(RMDIR) .Xil

.PHONY: incremental
incremental: all


nothing:

#
# Hw Kernels compile;
#

build/KA.xo: ../src/vts_Opt1Baseline/K_KA.cpp ../src/vts_Opt1Baseline/kernel.h KA-compile.cfg
	-@mkdir -p $(@D)
	-@$(RM) $@
	$(VPP) $(VPP_OPTS) --compile -I"$(<D)" --config KA-compile.cfg -o"$@" "$<"

build/KB.xo: ../src/vts_Opt1Baseline/K_KB.cpp ../src/vts_Opt1Baseline/kernel.h KB-compile.cfg
	-@mkdir -p $(@D)
	-@$(RM) $@
	$(VPP) $(VPP_OPTS) --compile -I"$(<D)" --config KB-compile.cfg -o"$@" "$<"

build/KCalc.xo: ../src/vts_Opt1Baseline/K_KCalc.cpp ../src/vts_Opt1Baseline/kernel.h KCalc-compile.cfg
	-@mkdir -p $(@D)
	-@$(RM) $@
	$(VPP) $(VPP_OPTS) --compile -I"$(<D)" --config KCalc-compile.cfg -o"$@" "$<"

build/KVConstAdd.xo: ../src/vts_Opt1Baseline/K_KVConstAdd.cpp ../src/vts_Opt1Baseline/kernel.h KVConstAdd-compile.cfg
	-@mkdir -p $(@D)
	-@$(RM) $@
	$(VPP) $(VPP_OPTS) --compile -I"$(<D)" --config KVConstAdd-compile.cfg -o"$@" "$<"

build/KpB.xo: ../src/vts_Opt1Baseline/K_KpB.cpp ../src/vts_Opt1Baseline/kernel.h KpB-compile.cfg
	-@mkdir -p $(@D)
	-@$(RM) $@
	$(VPP) $(VPP_OPTS) --compile -I"$(<D)" --config KpB-compile.cfg -o"$@" "$<"

