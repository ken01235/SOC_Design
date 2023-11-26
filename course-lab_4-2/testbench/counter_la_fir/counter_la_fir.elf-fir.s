	.file	"fir.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/SOC_Design/course-lab_4-2/testbench/counter_la_fir" "fir.c"
	.globl	inputbuffer
	.bss
	.align	2
	.type	inputbuffer, @object
	.size	inputbuffer, 256
inputbuffer:
	.zero	256
	.globl	outputsignal
	.align	2
	.type	outputsignal, @object
	.size	outputsignal, 256
outputsignal:
	.zero	256
	.section	.mprjram,"ax",@progbits
	.align	2
	.globl	initfir
	.type	initfir, @function
initfir:
.LFB0:
	.file 1 "fir.c"
	.loc 1 4 61
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 6 3
	li	a5,805306368
	addi	a5,a5,16
	.loc 1 6 36
	li	a4,64
	sw	a4,0(a5)
	.loc 1 16 3
	li	a5,805306368
	addi	a5,a5,64
	.loc 1 16 36
	li	a4,1
	sw	a4,0(a5)
	.loc 1 17 3
	li	a5,805306368
	addi	a5,a5,68
	.loc 1 17 36
	li	a4,-10
	sw	a4,0(a5)
	.loc 1 18 3
	li	a5,805306368
	addi	a5,a5,72
	.loc 1 18 36
	li	a4,-9
	sw	a4,0(a5)
	.loc 1 19 3
	li	a5,805306368
	addi	a5,a5,76
	.loc 1 19 36
	li	a4,23
	sw	a4,0(a5)
	.loc 1 20 3
	li	a5,805306368
	addi	a5,a5,80
	.loc 1 20 36
	li	a4,56
	sw	a4,0(a5)
	.loc 1 21 3
	li	a5,805306368
	addi	a5,a5,84
	.loc 1 21 36
	li	a4,63
	sw	a4,0(a5)
	.loc 1 22 3
	li	a5,805306368
	addi	a5,a5,88
	.loc 1 22 36
	li	a4,56
	sw	a4,0(a5)
	.loc 1 23 3
	li	a5,805306368
	addi	a5,a5,92
	.loc 1 23 36
	li	a4,23
	sw	a4,0(a5)
	.loc 1 24 3
	li	a5,805306368
	addi	a5,a5,96
	.loc 1 24 36
	li	a4,-9
	sw	a4,0(a5)
	.loc 1 25 3
	li	a5,805306368
	addi	a5,a5,100
	.loc 1 25 36
	li	a4,-10
	sw	a4,0(a5)
	.loc 1 26 3
	li	a5,805306368
	addi	a5,a5,104
	.loc 1 26 36
	sw	zero,0(a5)
	.loc 1 27 1
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	initfir, .-initfir
	.align	2
	.globl	fir
	.type	fir, @function
fir:
.LFB1:
	.loc 1 29 56
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 30 2
	call	initfir
	.loc 1 33 3
	li	a5,805306368
	.loc 1 33 36
	li	a4,1
	sw	a4,0(a5)
.LBB2:
	.loc 1 36 15
	sw	zero,-20(s0)
	.loc 1 36 2
	j	.L3
.L4:
	.loc 1 38 8
	nop
	.loc 1 38 11
	li	a5,805306368
	lw	a5,0(a5)
	.loc 1 39 4
	li	a5,805306368
	addi	a5,a5,128
	.loc 1 39 40
	lw	a4,-20(s0)
	addi	a4,a4,1
	.loc 1 39 37
	sw	a4,0(a5)
	.loc 1 42 8
	nop
	.loc 1 42 11
	li	a5,805306368
	lw	a5,0(a5)
	.loc 1 43 22
	li	a5,805306368
	addi	a5,a5,132
	lw	a5,0(a5)
	mv	a3,a5
	.loc 1 43 19
	lui	a5,%hi(outputsignal)
	addi	a4,a5,%lo(outputsignal)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	a3,0(a5)
	.loc 1 36 27
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L3:
	.loc 1 36 21 discriminator 1
	lw	a4,-20(s0)
	li	a5,63
	bleu	a4,a5,.L4
.LBE2:
	.loc 1 47 7
	nop
	.loc 1 47 10
	li	a5,805306368
	lw	a5,0(a5)
	.loc 1 50 9
	lui	a5,%hi(outputsignal+252)
	addi	a5,a5,%lo(outputsignal+252)
	.loc 1 51 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	fir, .-fir
	.text
.Letext0:
	.file 2 "fir.h"
	.file 3 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x111
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.4byte	.LASF16
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x5
	.4byte	.LASF17
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x7
	.4byte	0x6a
	.4byte	0x88
	.byte	0x8
	.4byte	0x71
	.byte	0x3f
	.byte	0
	.byte	0x3
	.4byte	.LASF11
	.byte	0x1a
	.4byte	0x78
	.byte	0x5
	.byte	0x3
	.4byte	inputbuffer
	.byte	0x3
	.4byte	.LASF12
	.byte	0x1b
	.4byte	0x78
	.byte	0x5
	.byte	0x3
	.4byte	outputsignal
	.byte	0x9
	.string	"fir"
	.byte	0x1
	.byte	0x1d
	.byte	0x33
	.4byte	0xf0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0xf0
	.byte	0x2
	.4byte	.LASF13
	.byte	0x22
	.byte	0xb
	.4byte	0x50
	.byte	0x2
	.4byte	.LASF14
	.byte	0x22
	.byte	0x18
	.4byte	0x50
	.byte	0xa
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0xb
	.string	"i"
	.byte	0x1
	.byte	0x24
	.byte	0xf
	.4byte	0x50
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x6a
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4
	.byte	0x33
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x2
	.4byte	.LASF15
	.byte	0x9
	.byte	0xb
	.4byte	0x50
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x1f
	.byte	0x1b
	.byte	0x1f
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL0:
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"initfir"
.LASF6:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF14:
	.string	"ap_ready_yn"
.LASF16:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -ffreestanding"
.LASF10:
	.string	"unsigned int"
.LASF15:
	.string	"reg_mprj_coeff_i"
.LASF9:
	.string	"long long unsigned int"
.LASF11:
	.string	"inputbuffer"
.LASF12:
	.string	"outputsignal"
.LASF5:
	.string	"long long int"
.LASF3:
	.string	"short int"
.LASF13:
	.string	"ap_ready_xn"
.LASF17:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF2:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/ubuntu/SOC_Design/course-lab_4-2/testbench/counter_la_fir"
.LASF0:
	.string	"fir.c"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
