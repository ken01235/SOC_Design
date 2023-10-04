// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfir_n11_maxi.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFir_n11_maxi_CfgInitialize(XFir_n11_maxi *InstancePtr, XFir_n11_maxi_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFir_n11_maxi_Set_pn32HPInput(XFir_n11_maxi *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFir_n11_maxi_WriteReg(InstancePtr->Control_BaseAddress, XFIR_N11_MAXI_CONTROL_ADDR_PN32HPINPUT_DATA, (u32)(Data));
    XFir_n11_maxi_WriteReg(InstancePtr->Control_BaseAddress, XFIR_N11_MAXI_CONTROL_ADDR_PN32HPINPUT_DATA + 4, (u32)(Data >> 32));
}

u64 XFir_n11_maxi_Get_pn32HPInput(XFir_n11_maxi *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFir_n11_maxi_ReadReg(InstancePtr->Control_BaseAddress, XFIR_N11_MAXI_CONTROL_ADDR_PN32HPINPUT_DATA);
    Data += (u64)XFir_n11_maxi_ReadReg(InstancePtr->Control_BaseAddress, XFIR_N11_MAXI_CONTROL_ADDR_PN32HPINPUT_DATA + 4) << 32;
    return Data;
}

void XFir_n11_maxi_Set_pn32HPOutput(XFir_n11_maxi *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFir_n11_maxi_WriteReg(InstancePtr->Control_BaseAddress, XFIR_N11_MAXI_CONTROL_ADDR_PN32HPOUTPUT_DATA, (u32)(Data));
    XFir_n11_maxi_WriteReg(InstancePtr->Control_BaseAddress, XFIR_N11_MAXI_CONTROL_ADDR_PN32HPOUTPUT_DATA + 4, (u32)(Data >> 32));
}

u64 XFir_n11_maxi_Get_pn32HPOutput(XFir_n11_maxi *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFir_n11_maxi_ReadReg(InstancePtr->Control_BaseAddress, XFIR_N11_MAXI_CONTROL_ADDR_PN32HPOUTPUT_DATA);
    Data += (u64)XFir_n11_maxi_ReadReg(InstancePtr->Control_BaseAddress, XFIR_N11_MAXI_CONTROL_ADDR_PN32HPOUTPUT_DATA + 4) << 32;
    return Data;
}

void XFir_n11_maxi_Set_regXferLeng(XFir_n11_maxi *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFir_n11_maxi_WriteReg(InstancePtr->Control_BaseAddress, XFIR_N11_MAXI_CONTROL_ADDR_REGXFERLENG_DATA, Data);
}

u32 XFir_n11_maxi_Get_regXferLeng(XFir_n11_maxi *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFir_n11_maxi_ReadReg(InstancePtr->Control_BaseAddress, XFIR_N11_MAXI_CONTROL_ADDR_REGXFERLENG_DATA);
    return Data;
}

u32 XFir_n11_maxi_Get_an32Coef_BaseAddress(XFir_n11_maxi *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XFIR_N11_MAXI_CONTROL_ADDR_AN32COEF_BASE);
}

u32 XFir_n11_maxi_Get_an32Coef_HighAddress(XFir_n11_maxi *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XFIR_N11_MAXI_CONTROL_ADDR_AN32COEF_HIGH);
}

u32 XFir_n11_maxi_Get_an32Coef_TotalBytes(XFir_n11_maxi *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XFIR_N11_MAXI_CONTROL_ADDR_AN32COEF_HIGH - XFIR_N11_MAXI_CONTROL_ADDR_AN32COEF_BASE + 1);
}

u32 XFir_n11_maxi_Get_an32Coef_BitWidth(XFir_n11_maxi *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFIR_N11_MAXI_CONTROL_WIDTH_AN32COEF;
}

u32 XFir_n11_maxi_Get_an32Coef_Depth(XFir_n11_maxi *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFIR_N11_MAXI_CONTROL_DEPTH_AN32COEF;
}

u32 XFir_n11_maxi_Write_an32Coef_Words(XFir_n11_maxi *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XFIR_N11_MAXI_CONTROL_ADDR_AN32COEF_HIGH - XFIR_N11_MAXI_CONTROL_ADDR_AN32COEF_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XFIR_N11_MAXI_CONTROL_ADDR_AN32COEF_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XFir_n11_maxi_Read_an32Coef_Words(XFir_n11_maxi *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XFIR_N11_MAXI_CONTROL_ADDR_AN32COEF_HIGH - XFIR_N11_MAXI_CONTROL_ADDR_AN32COEF_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XFIR_N11_MAXI_CONTROL_ADDR_AN32COEF_BASE + (offset + i)*4);
    }
    return length;
}

u32 XFir_n11_maxi_Write_an32Coef_Bytes(XFir_n11_maxi *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XFIR_N11_MAXI_CONTROL_ADDR_AN32COEF_HIGH - XFIR_N11_MAXI_CONTROL_ADDR_AN32COEF_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XFIR_N11_MAXI_CONTROL_ADDR_AN32COEF_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XFir_n11_maxi_Read_an32Coef_Bytes(XFir_n11_maxi *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XFIR_N11_MAXI_CONTROL_ADDR_AN32COEF_HIGH - XFIR_N11_MAXI_CONTROL_ADDR_AN32COEF_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XFIR_N11_MAXI_CONTROL_ADDR_AN32COEF_BASE + offset + i);
    }
    return length;
}

