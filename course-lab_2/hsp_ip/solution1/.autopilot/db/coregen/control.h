// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of pn32HPInput
//        bit 31~0 - pn32HPInput[31:0] (Read/Write)
// 0x14 : Data signal of pn32HPInput
//        bit 31~0 - pn32HPInput[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of pn32HPOutput
//        bit 31~0 - pn32HPOutput[31:0] (Read/Write)
// 0x20 : Data signal of pn32HPOutput
//        bit 31~0 - pn32HPOutput[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of regXferLeng
//        bit 31~0 - regXferLeng[31:0] (Read/Write)
// 0x2c : reserved
// 0x40 ~
// 0x7f : Memory 'an32Coef' (12 * 32b)
//        Word n : bit [31:0] - an32Coef[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_PN32HPINPUT_DATA  0x10
#define CONTROL_BITS_PN32HPINPUT_DATA  64
#define CONTROL_ADDR_PN32HPOUTPUT_DATA 0x1c
#define CONTROL_BITS_PN32HPOUTPUT_DATA 64
#define CONTROL_ADDR_REGXFERLENG_DATA  0x28
#define CONTROL_BITS_REGXFERLENG_DATA  32
#define CONTROL_ADDR_AN32COEF_BASE     0x40
#define CONTROL_ADDR_AN32COEF_HIGH     0x7f
#define CONTROL_WIDTH_AN32COEF         32
#define CONTROL_DEPTH_AN32COEF         12
