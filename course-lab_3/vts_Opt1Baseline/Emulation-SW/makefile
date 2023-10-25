#
# this file was created by a computer. trust it.
#

# compiler tools
XILINX_VITIS ?= /tools/Xilinx/Vitis/2022.1
XILINX_XRT ?= 

HOST_CXX ?= g++
EMCONFIGUTIL = ${XILINX_VITIS}/bin/emconfigutil --od .
RM = rm -f
RMDIR = rm -rf

VITIS_PLATFORM = xilinx_u50_gen3x16_xdma_5_202210_1
VITIS_PLATFORM_DIR = /home/ubuntu/Downloads/data/opt/xilinx/platforms/xilinx_u50_gen3x16_xdma_5_202210_1
VITIS_PLATFORM_PATH = $(VITIS_PLATFORM_DIR)/xilinx_u50_gen3x16_xdma_5_202210_1.xpfm

# host compiler global settings
CXXFLAGS += -std=c++1y -DVITIS_PLATFORM=$(VITIS_PLATFORM) -D__USE_XOPEN2K8 -I/include/ -I/tools/Xilinx/Vitis_HLS/2022.1/include/ -O0 -g -Wall -c -fmessage-length=0
LDFLAGS += -lxilinxopencl -lpthread -lrt -lstdc++ -L/lib/ -Wl,-rpath-link,$(XILINX_XRT)/lib

#
# host files
#

HOST_OBJECTS += src/help_functions.o
HOST_OBJECTS += src/host.o

HOST_EXE = vts_Opt1Baseline

BUILD_SUBDIRS += src/

EMCONFIG_FILE = emconfig.json

#
# primary build targets
#

.PHONY: all clean
all:  $(HOST_EXE) $(EMCONFIG_FILE)

clean:
	-$(RM) $(HOST_EXE) $(HOST_OBJECTS)

.PHONY: incremental
incremental: all

include makeemconfig.mk

nothing:

#
# host rules
#

src/help_functions.o: ../src/help_functions.cpp ../src/help_functions.h ../src/kernel.h
	-@mkdir -p $(@D)
	$(HOST_CXX) $(CXXFLAGS) -o "$@" "$<"

src/host.o: ../src/host.cpp ../src/help_functions.h ../src/kernel.h
	-@mkdir -p $(@D)
	$(HOST_CXX) $(CXXFLAGS) -o "$@" "$<"

$(HOST_EXE): $(HOST_OBJECTS)
	$(HOST_CXX) -o "$@" $(+) $(LDFLAGS)

#
# emulation configuration file
#

$(EMCONFIG_FILE): makeemconfig.mk
	$(EMCONFIGUTIL) --nd $(NUMBER_OF_DEVICES)  --platform $(VITIS_PLATFORM_PATH)
	-@$(RMDIR) TempConfig .Xil/configutil*

