;******************************************************************************
;* TMS320C6x C/C++ Codegen                                       Unix v6.1.17 *
;* Date/Time created: Fri Jun  3 15:54:59 2016                                *
;******************************************************************************
	.compiler_opts --c64p_l1d_workaround=default --disable:=sploop --endian=little --hll_source=on --mem_model:code=far --mem_model:const=data --mem_model:data=far --predefine_memory_model_macros --quiet --silicon_version=6500 --symdebug:skeletal 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C64x+                                          *
;*   Optimization      : Enabled at level 3                                   *
;*   Optimizing for    : Speed                                                *
;*                       Based on options: -o3, no -ms                        *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far                                                  *
;*   Pipelining        : Enabled                                              *
;*   Speculate Loads   : Disabled                                             *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : DWARF Debug for Program Analysis w/Optimization      *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("task.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen Unix v6.1.17 Copyright (c) 1996-2010 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/data/home/in4342-11/assignment2/Dirk/Merged_completeV5-neongppdsp/merged_dsp_gpp-COMMENTS/dsp")
;*****************************************************************************
;* CINIT RECORDS                                                             *
;*****************************************************************************
	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_start+0,32
	.field  	0,32			; _start @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_count$1+0,32
	.field  	0,32			; _count$1 @ 0

	.sect	".cinit"
	.align	8
	.field  	$C$IR_1,32
	.field  	_kernel$2+0,32
	.field  	317,16			; _kernel$2[0] @ 0
	.field  	898,16			; _kernel$2[1] @ 16
	.field  	2165,16			; _kernel$2[2] @ 32
	.field  	4448,16			; _kernel$2[3] @ 48
	.field  	7787,16			; _kernel$2[4] @ 64
	.field  	7787,16			; _kernel$2[5] @ 80
	.field  	11617,16			; _kernel$2[6] @ 96
	.field  	14768,16			; _kernel$2[7] @ 112
	.field  	15998,16			; _kernel$2[8] @ 128
	.field  	14768,16			; _kernel$2[9] @ 144
	.field  	11617,16			; _kernel$2[10] @ 160
	.field  	7787,16			; _kernel$2[11] @ 176
	.field  	4448,16			; _kernel$2[12] @ 192
	.field  	2165,16			; _kernel$2[13] @ 208
	.field  	898,16			; _kernel$2[14] @ 224
	.field  	317,16			; _kernel$2[15] @ 240
$C$IR_1:	.set	32


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_free")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_MEM_free")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$22)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$39)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$40)
	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_valloc")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_MEM_valloc")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$22)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$40)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$40)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$41)
	.dwendtag $C$DW$5


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("SEM_pend")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_SEM_pend")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$52)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$72)
	.dwendtag $C$DW$10


$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("SEM_post")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_SEM_post")
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$52)
	.dwendtag $C$DW$13


$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("_SEM_dopost")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("__SEM_dopost")
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$52)
	.dwendtag $C$DW$15


$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("NOTIFY_register")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_NOTIFY_register")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$37)
$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$37)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$37)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$58)
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$39)
	.dwendtag $C$DW$17


$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("NOTIFY_unregister")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_NOTIFY_unregister")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_external
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$37)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$37)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$37)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$58)
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$23


$C$DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("NOTIFY_notify")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_NOTIFY_notify")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$29, DW_AT_declaration
	.dwattr $C$DW$29, DW_AT_external
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$37)
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$37)
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$37)
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$37)
	.dwendtag $C$DW$29


$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("BCACHE_inv")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_BCACHE_inv")
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$39)
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$40)
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$59)
	.dwendtag $C$DW$34


$C$DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("BCACHE_wb")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_BCACHE_wb")
	.dwattr $C$DW$38, DW_AT_declaration
	.dwattr $C$DW$38, DW_AT_external
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$39)
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$40)
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$59)
	.dwendtag $C$DW$38


$C$DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("malloc")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_malloc")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$42, DW_AT_declaration
	.dwattr $C$DW$42, DW_AT_external
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$40)
	.dwendtag $C$DW$42


$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("free")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_free")
	.dwattr $C$DW$44, DW_AT_declaration
	.dwattr $C$DW$44, DW_AT_external
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$44

$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("DDR2")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_DDR2")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$46, DW_AT_declaration
	.dwattr $C$DW$46, DW_AT_external
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("MPCSXFER_BufferSize")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_MPCSXFER_BufferSize")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$47, DW_AT_declaration
	.dwattr $C$DW$47, DW_AT_external
	.global	_start
_start:	.usect	".far",4,4
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("start")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_start")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_addr _start]
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$48, DW_AT_external
	.global	_buf
_buf:	.usect	".far",4,4
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_addr _buf]
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$49, DW_AT_external
	.global	_windowsize
_windowsize:	.usect	".far",4,4
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("windowsize")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_windowsize")
	.dwattr $C$DW$50, DW_AT_location[DW_OP_addr _windowsize]
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$50, DW_AT_external
	.global	_length
_length:	.usect	".far",4,4
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("length")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$51, DW_AT_location[DW_OP_addr _length]
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$51, DW_AT_external
	.global	_rows
_rows:	.usect	".far",4,4
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("rows")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_rows")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_addr _rows]
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$52, DW_AT_external
	.global	_cols
_cols:	.usect	".far",4,4
$C$DW$53	.dwtag  DW_TAG_variable, DW_AT_name("cols")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_cols")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_addr _cols]
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$53, DW_AT_external
	.global	_po
_po:	.usect	".far",4,4
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("po")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_po")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_addr _po]
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$54, DW_AT_external
_count$1:	.usect	".far",4,4
_kernel$2:	.usect	".far",32,8
;	/data/bbToolChain/usr/local/share/c6000/bin/opt6x /tmp/29135W6kPwm /tmp/291354QAXfL 
	.sect	".text"
	.clink
	.global	_gaussian_smooth

$C$DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("gaussian_smooth")
	.dwattr $C$DW$55, DW_AT_low_pc(_gaussian_smooth)
	.dwattr $C$DW$55, DW_AT_high_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_gaussian_smooth")
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$55, DW_AT_TI_begin_line(0xcb)
	.dwattr $C$DW$55, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$55, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr $C$DW$55, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 204,column 1,is_stmt,address _gaussian_smooth
$C$DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_name("image")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_image")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg4]
$C$DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rows")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_rows")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg20]
$C$DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cols")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_cols")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: gaussian_smooth                                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 32 Save = 32 byte                  *
;******************************************************************************
_gaussian_smooth:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     __divi,A5         ; |229| 
           MVKH    .S1     __divi,A5         ; |229| 
           STW     .D2T1   A11,*SP--(8)      ; |204| 
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("__divi")
	.dwattr $C$DW$59, DW_AT_TI_call
           CALL    .S2X    A5                ; |229| 
           STDW    .D2T2   B13:B12,*SP--     ; |204| 
           STDW    .D2T2   B11:B10,*SP--     ; |204| 

           MV      .L2     B4,B11            ; |204| 
||         MV      .L1     A4,A11            ; |204| 
||         MVKL    .S1     _windowsize,A4

           MVK     .L2     15,B4             ; |222| 
||         MVKH    .S1     _windowsize,A4
||         MV      .S2     B3,B13            ; |204| 

           ADDKPC  .S2     $C$RL0,B3,0       ; |229| 
||         STW     .D2T1   A10,*SP--(8)      ; |204| 
||         STW     .D1T2   B4,*A4            ; |222| 
||         MV      .L1X    B11,A4            ; |229| 
||         MVK     .L2     0x5,B4            ; |229| 
||         MV      .S1     A6,A3             ; |204| 

$C$RL0:    ; CALL OCCURS {__divi} {0}        ; |229| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 9

           MV      .L2X    A3,B10            ; |204| 
||         MVKL    .S1     _malloc,A3        ; |235| 

           MVKH    .S1     _malloc,A3        ; |235| 
           MVKL    .S2     _start,B12
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_malloc")
	.dwattr $C$DW$60, DW_AT_TI_call
           CALL    .S2X    A3                ; |235| 

           MVKH    .S2     _start,B12
||         SUB     .L1X    B11,A4,A5         ; |235| 

           STW     .D2T1   A4,*B12           ; |229| 
||         MPY32   .M1X    B10,A5,A4         ; |235| 

           ADDKPC  .S2     $C$RL1,B3,2       ; |235| 
$C$RL1:    ; CALL OCCURS {_malloc} {0}       ; |235| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           MVK     .L2     0x3,B6            ; |238| 
||         MVKL    .S2     _NOTIFY_notify,B5 ; |238| 
||         MV      .L1     A4,A0             ; |235| 
||         MV      .S1     A4,A10            ; |235| 

   [ A0]   B       .S1     $C$L1             ; |235| 
|| [ A0]   LDW     .D2T2   *B12,B18          ; |249| 
||         MVKH    .S2     _NOTIFY_notify,B5 ; |238| 

$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$61, DW_AT_TI_call
   [!A0]   CALL    .S2     B5                ; |238| 
           ZERO    .L2     B4                ; |238| 
           MVK     .L1     0x1,A4            ; |238| 
           MVK     .L1     0x5,A6            ; |238| 
   [ A0]   CMPGT   .L2     B18,0,B1          ; |249| 
           ; BRANCHCC OCCURS {$C$L1}         ; |235| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           ADDKPC  .S2     $C$RL2,B3,0       ; |238| 
$C$RL2:    ; CALL OCCURS {_NOTIFY_notify} {0}  ; |238| 
           LDW     .D2T2   *B12,B18          ; |249| 
           NOP             4
           CMPGT   .L2     B18,0,B1          ; |249| 
;** --------------------------------------------------------------------------*
$C$L1:    
;          EXCLUSIVE CPU CYCLES: 6

   [!B1]   BNOP    .S1     $C$L7,5           ; |249| 
||         MV      .S2     B18,B0            ; |252| 
||         ZERO    .L1     A3                ; |250| 
||         CMPGT   .L2     B10,0,B1          ; |252| 

           ; BRANCHCC OCCURS {$C$L7}         ; |249| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
	.dwpsn	file "task.c",line 250,column 0,is_stmt

   [!B1]   BNOP    .S1     $C$L6,4           ; |252| 
|| [ B1]   SUB     .L1X    B10,1,A0

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L2
;** --------------------------------------------------------------------------*
$C$L2:    
$C$DW$L$_gaussian_smooth$7$B:
	.dwpsn	file "task.c",line 251,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 1
           NOP             1
           ; BRANCHCC OCCURS {$C$L6}         ; |252| 
$C$DW$L$_gaussian_smooth$7$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 252
;*      Loop opening brace source line   : 253
;*      Loop closing brace source line   : 255
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |*                               |    **                          |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Collapsed epilog stages       : 5
;*      Collapsed prolog stages       : 0
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 1
;*      Min. prof. trip count  (est.) : 2
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 5 + trip_cnt * 1        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             A0,1,A0
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C155:
;*   0      [ A0]   BDEC    .S1     $C$C155,A0        ; |252| 
;*   1              NOP             4
;*   5              STB     .D2T2   B5,*B4++          ; |252| 
;*   6              ; BRANCHCC OCCURS {$C$C155}       ; |252| 
;*----------------------------------------------------------------------------*
$C$L3:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 5

           MPY32   .M2X    B10,A3,B4
|| [ A0]   BDEC    .S1     $C$L4,A0          ; |252| (P) <0,0> 

   [ A0]   BDEC    .S1     $C$L4,A0          ; |252| (P) <1,0> 
   [ A0]   BDEC    .S1     $C$L4,A0          ; |252| (P) <2,0> 
   [ A0]   BDEC    .S1     $C$L4,A0          ; |252| (P) <3,0> 
	.dwpsn	file "task.c",line 252,column 0,is_stmt

           ZERO    .L2     B5
||         ADD     .S2X    A10,B4,B4
|| [ A0]   BDEC    .S1     $C$L4,A0          ; |252| (P) <4,0> 

;** --------------------------------------------------------------------------*
$C$L4:    ; PIPED LOOP KERNEL
$C$DW$L$_gaussian_smooth$9$B:
	.dwpsn	file "task.c",line 253,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 1
	.dwpsn	file "task.c",line 255,column 0,is_stmt

           STB     .D2T2   B5,*B4++          ; |252| <0,5> 
|| [ A0]   BDEC    .S1     $C$L4,A0          ; |252| <5,0> 

$C$DW$L$_gaussian_smooth$9$E:
;** --------------------------------------------------------------------------*
$C$L5:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$L6:    
$C$DW$L$_gaussian_smooth$11$B:
;          EXCLUSIVE CPU CYCLES: 7

           SUB     .S2     B0,1,B0           ; |250| 
||         CMPGT   .L2     B10,0,B1          ; |252| 
||         ADD     .L1     1,A3,A3           ; |250| 

   [ B0]   B       .S1     $C$L2             ; |250| 
|| [!B0]   MVK     .L2     0x1,B1            ; |252| nullify predicate

	.dwpsn	file "task.c",line 256,column 0,is_stmt

   [!B1]   BNOP    .S1     $C$L6,4           ; |252| 
|| [ B1]   SUB     .L1X    B10,1,A0

           ; BRANCHCC OCCURS {$C$L2}         ; |250| 
$C$DW$L$_gaussian_smooth$11$E:
;** --------------------------------------------------------------------------*
$C$L7:    
;          EXCLUSIVE CPU CYCLES: 7

           CMPLT   .L2     B18,B11,B0        ; |259| 
||         MV      .L1X    B18,A9            ; |259| 
||         SUB     .S2     B11,B18,B4        ; |261| 

   [!B0]   BNOP    .S1     $C$L14,3          ; |259| 
||         MV      .S2     B0,B1             ; guard predicate rewrite
|| [ B0]   CMPGT   .L2     B10,0,B0          ; |261| 

           MV      .L1X    B4,A23            ; |259| 
           SUB     .L2X    A9,B18,B4
           ; BRANCHCC OCCURS {$C$L14}        ; |259| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 4

   [!B0]   B       .S2     $C$L13            ; |261| 
||         MPY32   .M2     B10,B4,B4
|| [ B0]   MV      .L1X    B10,A19
|| [ B0]   MVK     .S1     0xfffffff9,A3     ; |265| 
|| [ B0]   ZERO    .D1     A8                ; |261| 

   [ B0]   MV      .L1     A3,A4
   [ B0]   MPY32   .M1     A19,A9,A5         ; |269| (P) <0,0> 
	.dwpsn	file "task.c",line 259,column 0,is_stmt
   [ B0]   MPY32   .M1     A19,A9,A16        ; |269| (P) <1,0> 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L8
;** --------------------------------------------------------------------------*
$C$L8:    
$C$DW$L$_gaussian_smooth$14$B:
	.dwpsn	file "task.c",line 260,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 2
           ADD     .L1X    A10,B4,A22
           MV      .L2X    A8,B4
           ; BRANCHCC OCCURS {$C$L13}        ; |261| 
$C$DW$L$_gaussian_smooth$14$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_gaussian_smooth$15$B:
;          EXCLUSIVE CPU CYCLES: 4

           ADD     .L2X    A4,B4,B6          ; |267| (P) <0,4> 
||         ADD     .L1     A4,A5,A7          ; |269| (P) <0,4> 
||         ADD     .S1     1,A4,A5           ; |265| (P) <0,5> 
||         MVKL    .S2     _kernel$2+14,B5
||         MV      .D1X    B10,A24           ; |263| 
||         MPY32   .M1     A19,A9,A17        ; |269| (P) <2,0> 

           ADD     .L1     A8,A7,A20         ; |269| (P) <0,7> 
||         ADD     .S1     A5,A16,A7         ; |269| (P) <1,4> 
||         ADD     .D1     1,A5,A21          ; |265| (P) <1,5> 
||         MVKH    .S2     _kernel$2+14,B5

           CMPLT   .L1X    B6,A19,A4         ; |267| (P) <0,6> 
||         CMPLT   .L2     B6,0,B6           ; |267| (P) <0,6> 
||         MV      .S1     A11,A18

           XOR     .L2     1,B6,B7           ; |267| (P) <0,7> 
$C$DW$L$_gaussian_smooth$15$E:
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L9
;** --------------------------------------------------------------------------*
$C$L9:    
$C$DW$L$_gaussian_smooth$16$B:
;          EXCLUSIVE CPU CYCLES: 2

           MV      .L1X    B5,A16
||         ADD     .L2X    A5,B4,B6          ; |267| (P) <1,4> 
||         DINT                              ; interrupts off

           AND     .L2X    A4,B7,B1          ; |267| (P) <0,8> 
$C$DW$L$_gaussian_smooth$16$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 265
;*      Loop opening brace source line   : 266
;*      Loop closing brace source line   : 272
;*      Known Minimum Trip Count         : 15                    
;*      Known Maximum Trip Count         : 15                    
;*      Known Max Trip Count Factor      : 15
;*      Loop Carried Dependency Bound(^) : 3
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        1     
;*      .S units                     0        1     
;*      .D units                     2        0     
;*      .M units                     2        0     
;*      .X cross paths               2        2     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          6        7     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     3*       3*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 3  Schedule found with 7 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |   *******      ******          |*** ******                      |
;*       1: |   *******      ******          |*** *** **                      |
;*       2: |    ******      ******          |*** ******                      |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Epilog not entirely removed
;*      Collapsed epilog stages       : 3
;*
;*      Prolog not removed
;*      Collapsed prolog stages       : 0
;*
;*      Minimum required memory pad   : 0 bytes
;*
;*      Minimum safe trip count       : 4
;*
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 18 + min_trip_cnt * 3 = 63        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             B2,1,B2
;*                  MV              A8,B4
;*                  MV              A17,A3
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C137:
;*   0              MPY32   .M1     A19,A9,A20        ; |269| 
;*   1              NOP             3
;*   4              ADD     .D2X    A17,B4,B7         ; |267| 
;*     ||           ADD     .L1     A17,A20,A21       ; |269| 
;*   5              ADD     .L1     1,A17,A17         ; |265| 
;*   6              CMPLT   .L1X    B7,A19,A5         ; |267| 
;*     ||           CMPLT   .L2     B7,0,B5           ; |267| 
;*   7              XOR     .L2     1,B5,B5           ; |267| 
;*     ||           ADD     .S1     A8,A21,A20        ; |269| 
;*   8              AND     .L2X    A5,B5,B1          ; |267| 
;*     ||           MV      .S1     A17,A4            ; |265| Split a long life
;*   9      [ B1]   LDBU    .D1T1   *+A20[A18],A6     ; |269| 
;*  10      [ B1]   LDHU    .D1T2   *+A16[A3],B8      ; |269| 
;*  11              MV      .S2     B1,B6             ; |267| Split a long life
;*     ||           MV      .D1     A4,A3             ; |265| Split a long life
;*  12              NOP             2
;*  14              MV      .D2     B6,B5             ; |267| Split a long life
;*  15              MV      .D2     B5,B0             ; |267| Split a long life
;*     ||   [ B2]   BDEC    .S2     $C$C137,B2        ; |265| 
;*  16              MPYU    .M1X    A6,B8,A5          ; |269| 
;*     ||   [ B0]   ADD     .S2     B8,B9,B9          ; |270| 
;*  17              NOP             1
;*  18      [ B0]   ADD     .S1     A5,A7,A7          ; |269| 
;*  19              NOP             2
;*  21              ; BRANCHCC OCCURS {$C$C137}       ; |265| 
;*----------------------------------------------------------------------------*
$C$L10:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 9

   [ B1]   LDBU    .D1T1   *+A20[A18],A6     ; |269| (P) <0,9> 
||         CMPLT   .L2     B6,0,B5           ; |267| (P) <1,6> 
||         CMPLT   .L1X    B6,A19,A4         ; |267| (P) <1,6> 
||         MPY32   .M1     A19,A9,A7         ; |269| (P) <3,0> 

   [ B1]   LDHU    .D1T2   *+A16[A3],B8      ; |269| (P) <0,10> 
||         XOR     .L2     1,B5,B5           ; |267| (P) <1,7> 
||         ADD     .L1     A8,A7,A20         ; |269| (P) <1,7> 
||         ADD     .S2X    A21,B4,B6         ; |267| (P) <2,4> 
||         ADD     .S1     A21,A17,A17       ; |269| (P) <2,4> 

           MV      .L1     A5,A3             ; |265| (P) <0,11> Split a long life
||         MV      .L2     B1,B5             ; |267| (P) <0,11> Split a long life
||         MV      .S1     A21,A5            ; |265| (P) <1,8> Split a long life
||         AND     .S2X    A4,B5,B1          ; |267| (P) <1,8> 
||         ADD     .D1     1,A21,A25         ; |265| (P) <2,5> 

           ZERO    .S2     B9                ; |264| 
|| [ B1]   LDBU    .D1T1   *+A20[A18],A6     ; |269| (P) <1,9> 
||         CMPLT   .L2     B6,0,B6           ; |267| (P) <2,6> 
||         CMPLT   .L1X    B6,A19,A4         ; |267| (P) <2,6> 
||         MPY32   .M1     A19,A9,A20        ; |269| (P) <4,0> 

           MVK     .L2     11,B2             ; |265| 
|| [ B1]   LDHU    .D1T2   *+A16[A3],B8      ; |269| (P) <1,10> 
||         XOR     .S2     1,B6,B7           ; |267| (P) <2,7> 
||         ADD     .L1     A8,A17,A20        ; |269| (P) <2,7> 
||         ADD     .D2X    A25,B4,B6         ; |267| (P) <3,4> 
||         ADD     .S1     A25,A7,A21        ; |269| (P) <3,4> 

           MV      .L2     B5,B7             ; |267| (P) <0,14> Split a long life
||         MV      .L1     A5,A3             ; |265| (P) <1,11> Split a long life
||         MV      .S2     B1,B5             ; |267| (P) <1,11> Split a long life
||         MV      .S1     A25,A5            ; |265| (P) <2,8> Split a long life
||         AND     .D2X    A4,B7,B1          ; |267| (P) <2,8> 
||         ADD     .D1     1,A25,A4          ; |265| (P) <3,5> 

           ZERO    .S1     A7                ; |264| 
|| [ B2]   BDEC    .S2     $C$L11,B2         ; |265| (P) <0,15> 
||         MV      .D2     B7,B0             ; |267| (P) <0,15> Split a long life
|| [ B1]   LDBU    .D1T1   *+A20[A18],A6     ; |269| (P) <2,9> 
||         CMPLT   .L2     B6,0,B6           ; |267| (P) <3,6> 
||         CMPLT   .L1X    B6,A19,A17        ; |267| (P) <3,6> 
||         MPY32   .M1     A19,A9,A20        ; |269| (P) <5,0> 

   [ B0]   ADD     .L2     B8,B9,B9          ; |270| (P) <0,16> 
||         MPYU    .M1X    A6,B8,A5          ; |269| (P) <0,16> 
|| [ B1]   LDHU    .D1T2   *+A16[A3],B8      ; |269| (P) <2,10> 
||         XOR     .S2     1,B6,B6           ; |267| (P) <3,7> 
||         ADD     .L1     A8,A21,A20        ; |269| (P) <3,7> 
||         ADD     .D2X    A4,B4,B7          ; |267| (P) <4,4> 
||         ADD     .S1     A4,A20,A21        ; |269| (P) <4,4> 

	.dwpsn	file "task.c",line 265,column 0,is_stmt

           MV      .L1     A5,A3             ; |265| (P) <2,11> Split a long life
||         MV      .S2     B1,B6             ; |267| (P) <2,11> Split a long life
||         AND     .D2X    A17,B6,B1         ; |267| (P) <3,8> 
||         ADD     .D1     1,A4,A17          ; |265| (P) <4,5> 

;** --------------------------------------------------------------------------*
$C$L11:    ; PIPED LOOP KERNEL
$C$DW$L$_gaussian_smooth$18$B:
	.dwpsn	file "task.c",line 266,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 3

   [ B0]   ADD     .S1     A5,A7,A7          ; |269| <0,18> 
|| [ B2]   BDEC    .S2     $C$L11,B2         ; |265| <1,15> 
||         MV      .D2     B5,B0             ; |267| <1,15> Split a long life
|| [ B1]   LDBU    .D1T1   *+A20[A18],A6     ; |269| <3,9> 
||         CMPLT   .L2     B7,0,B5           ; |267| <4,6> 
||         CMPLT   .L1X    B7,A19,A5         ; |267| <4,6> 
||         MPY32   .M1     A19,A9,A20        ; |269| <6,0> 

   [ B0]   ADD     .S2     B8,B9,B9          ; |270| <1,16> 
||         MPYU    .M1X    A6,B8,A5          ; |269| <1,16> 
|| [ B1]   LDHU    .D1T2   *+A16[A3],B8      ; |269| <3,10> 
||         XOR     .L2     1,B5,B5           ; |267| <4,7> 
||         ADD     .S1     A8,A21,A20        ; |269| <4,7> 
||         ADD     .D2X    A17,B4,B7         ; |267| <5,4> 
||         ADD     .L1     A17,A20,A21       ; |269| <5,4> 

	.dwpsn	file "task.c",line 272,column 0,is_stmt

           MV      .D2     B6,B5             ; |267| <2,14> Split a long life
||         MV      .D1     A4,A3             ; |265| <3,11> Split a long life
||         MV      .S2     B1,B6             ; |267| <3,11> Split a long life
||         MV      .S1     A17,A4            ; |265| <4,8> Split a long life
||         AND     .L2X    A5,B5,B1          ; |267| <4,8> 
||         ADD     .L1     1,A17,A17         ; |265| <5,5> 

$C$DW$L$_gaussian_smooth$18$E:
;** --------------------------------------------------------------------------*
$C$L12:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 2

           ADD     .L1     1,A8,A8           ; |261| 
||         MV      .S1     A18,A11
|| [ B0]   ADD     .D1     A5,A7,A7          ; |269| (E) <4,18> 
||         MV      .L2     B5,B0             ; |267| (E) <5,15> Split a long life

           MV      .L2X    A19,B10
|| [ B0]   ADD     .S2     B8,B9,B9          ; |270| (E) <5,16> 
||         MPYU    .M1X    A6,B8,A5          ; |269| (E) <5,16> 

;** --------------------------------------------------------------------------*
$C$DW$L$_gaussian_smooth$20$B:
;          EXCLUSIVE CPU CYCLES: 10
           RINT                              ; interrupts on

   [ B0]   ADD     .L1     A5,A7,A7          ; |269| (E) <5,18> 
||         MV      .L2     B6,B0             ; |267| 
||         MVKL    .S2     __divu,B6         ; |273| 

           MVKH    .S2     __divu,B6         ; |273| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("__divu")
	.dwattr $C$DW$62, DW_AT_TI_call
           CALL    .S2     B6                ; |273| 
           MPYU    .M1X    A6,B8,A5          ; |269| (E) <6,16> 
   [ B0]   ADD     .L2     B8,B9,B9          ; |270| (E) <6,16> 
   [ B0]   ADD     .L1     A5,A7,A7          ; |269| (E) <6,18> 
           ADDKPC  .S2     $C$RL3,B3,0       ; |273| 

           MV      .L1     A7,A4             ; |273| 
||         MV      .L2     B9,B4             ; |273| 

$C$RL3:    ; CALL OCCURS {__divu} {0}        ; |273| 
           MV      .L2X    A16,B5
$C$DW$L$_gaussian_smooth$20$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_gaussian_smooth$21$B:
;          EXCLUSIVE CPU CYCLES: 7

           SUB     .L1     A24,1,A0          ; |261| 
||         MV      .S1X    B10,A19
||         MVK     .D1     0xfffffff9,A3     ; |265| 

   [ A0]   B       .S2     $C$L9             ; |261| 
||         MPY32   .M1     A19,A9,A5         ; |269| (P) <0,0> 
||         STB     .D1T1   A4,*A22++         ; |273| 
||         MV      .L1     A3,A4
|| [ A0]   MV      .L2X    A8,B4
||         SUB     .S1     A24,1,A24         ; |261| 

   [ A0]   MPY32   .M1     A19,A9,A16        ; |269| (P) <1,0> 
|| [ A0]   MV      .L1     A11,A18

   [ A0]   ADD     .L2X    A4,B4,B6          ; |267| (P) <0,4> 
   [ A0]   MPY32   .M1     A19,A9,A17        ; |269| (P) <2,0> 

           ADD     .S1     A4,A5,A7          ; |269| (P) <0,4> 
||         ADD     .D1     1,A4,A5           ; |265| (P) <0,5> 
||         CMPLT   .L1X    B6,A19,A4         ; |267| (P) <0,6> 
|| [ A0]   CMPLT   .L2     B6,0,B6           ; |267| (P) <0,6> 

   [ A0]   ADD     .L1     A8,A7,A20         ; |269| (P) <0,7> 
|| [ A0]   ADD     .S1     A5,A16,A7         ; |269| (P) <1,4> 
|| [ A0]   ADD     .D1     1,A5,A21          ; |265| (P) <1,5> 
||         XOR     .L2     1,B6,B7           ; |267| (P) <0,7> 

           ; BRANCHCC OCCURS {$C$L9}         ; |261| 
$C$DW$L$_gaussian_smooth$21$E:
;** --------------------------------------------------------------------------*
$C$L13:    
$C$DW$L$_gaussian_smooth$22$B:
;          EXCLUSIVE CPU CYCLES: 7

           SUB     .L1     A23,1,A0          ; |259| 
||         ADD     .S1     1,A9,A9           ; |259| 
||         SUB     .D1     A23,1,A23         ; |259| 

   [ A0]   B       .S1     $C$L8             ; |259| 
|| [ A0]   CMPGT   .L2     B10,0,B0          ; |261| 
|| [!A0]   MVK     .S2     0x1,B0            ; nullify predicate

   [ A0]   SUB     .L2X    A9,B18,B4
|| [ B0]   MV      .L1X    B10,A19
|| [ B0]   MVK     .S1     0xfffffff9,A3     ; |265| 
|| [ B0]   ZERO    .D1     A8                ; |261| 

   [!B0]   BNOP    .S1     $C$L13,2          ; |261| 
|| [ B0]   MPY32   .M1     A19,A9,A5         ; |269| (P) <0,0> 
|| [ A0]   MPY32   .M2     B10,B4,B4
|| [ B0]   MV      .L1     A3,A4

	.dwpsn	file "task.c",line 275,column 0,is_stmt
   [ B0]   MPY32   .M1     A19,A9,A16        ; |269| (P) <1,0> 
           ; BRANCHCC OCCURS {$C$L8}         ; |259| 
$C$DW$L$_gaussian_smooth$22$E:
;** --------------------------------------------------------------------------*
$C$L14:    
;          EXCLUSIVE CPU CYCLES: 7

           ZERO    .S1     A5                ; |284| 
||         CMPGT   .L1X    B10,0,A0          ; |284| 
||         ADD     .L2     B10,B10,B4

   [!A0]   B       .S1     $C$L21            ; |284| 
           MV      .L1X    B4,A18            ; Define a twin register
   [ A0]   MPY32   .M2     B10,B18,B4
           SUB     .L2     B11,B18,B17
           MV      .L1X    B10,A20           ; |286| 
   [ A0]   CMPGT   .L2     B17,0,B0          ; |286| 
           ; BRANCHCC OCCURS {$C$L21}        ; |284| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5

   [!B0]   BNOP    .S1     $C$L20,1          ; |286| 
||         ADD     .L1X    A5,B4,A3
|| [ B0]   MVK     .D1     0xfffffff9,A22    ; |286| 

           ADDAH   .D1     A11,A3,A19
   [ B0]   MV      .L1X    B10,A7
	.dwpsn	file "task.c",line 284,column 0,is_stmt
           MV      .L1     A22,A3
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L15
;** --------------------------------------------------------------------------*
$C$L15:    
$C$DW$L$_gaussian_smooth$25$B:
	.dwpsn	file "task.c",line 285,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 1
           NOP             1
           ; BRANCHCC OCCURS {$C$L20}        ; |286| 
$C$DW$L$_gaussian_smooth$25$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_gaussian_smooth$26$B:
;          EXCLUSIVE CPU CYCLES: 2

           CMPLT   .L2X    A22,B11,B4        ; |292| 
||         MVKL    .S2     _kernel$2,B16
||         MV      .L1X    B17,A21           ; |288| 
||         MPY32   .M1     A7,A3,A4          ; |294| (P) <0,0> 
||         ADD     .S1     1,A3,A9           ; |290| (P) <0,2>  ^ Define a twin register

           CMPLT   .L1     A22,0,A3          ; |292| 
$C$DW$L$_gaussian_smooth$26$E:
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L16
;** --------------------------------------------------------------------------*
$C$L16:    
$C$DW$L$_gaussian_smooth$27$B:
;          EXCLUSIVE CPU CYCLES: 1
           DINT                              ; interrupts off
$C$DW$L$_gaussian_smooth$27$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 290
;*      Loop opening brace source line   : 291
;*      Loop closing brace source line   : 297
;*      Known Minimum Trip Count         : 15                    
;*      Known Maximum Trip Count         : 15                    
;*      Known Max Trip Count Factor      : 15
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        1     
;*      .S units                     1        0     
;*      .D units                     1        1     
;*      .M units                     2        0     
;*      .X cross paths               2        2     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          4        3     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     3*       2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 3  Schedule found with 5 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |* ********      **              |    * ****      *               |
;*       1: |**********       *              |      ****      *               |
;*       2: |***  ****       **              |    ******      *               |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Epilog not entirely removed
;*      Collapsed epilog stages       : 2
;*
;*      Prolog not removed
;*      Collapsed prolog stages       : 0
;*
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh4
;*
;*      Minimum safe trip count       : 3
;*
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.125, max 1.000 }
;*      Mem bank perf. penalty (est.) : 4.0%
;*
;*      Effective ii                : { min 3.00, est 3.12, max 4.00 }
;*
;*
;*      Total cycles (est.)         : 10 + min_trip_cnt * 3 = 55        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             A2,1,A2
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C36:
;*   0              CMPLT   .L1     A8,0,A9           ; |292| 
;*     ||           MPY32   .M1     A7,A8,A4          ; |294| 
;*   1              NOP             1
;*   2              CMPLT   .L2X    A8,B9,B4          ; |292|  ^ 
;*     ||           XOR     .L1     1,A9,A16          ; |292| 
;*     ||           ADD     .S1     1,A8,A8           ; |290|  ^ Define a twin register
;*   3              NOP             1
;*   4              AND     .L1X    B4,A16,A1         ; |292| 
;*     ||           ADD     .L2     2,B16,B16         ; |292| 
;*     ||           ADD     .D1     A5,A4,A4          ; |294| 
;*   5      [ A1]   LDHU    .D2T2   *-B16(2),B6       ; |294| 
;*     ||   [ A1]   LDBU    .D1T1   *+A4[A6],A17      ; |294| 
;*   6              MV      .S1     A1,A3             ; |292| Split a long life
;*   7      [ A2]   BDEC    .S1     $C$C36,A2         ; |290| 
;*   8              ROTL    .M1     A3,0,A0           ; |292| Split a long life
;*   9              NOP             1
;*  10      [ A0]   MPYU    .M2X    A17,B6,B5         ; |294| 
;*     ||   [ A0]   ADD     .S2     B6,B7,B7          ; |295| 
;*  11              NOP             1
;*  12      [ A0]   ADD     .L2     B5,B8,B8          ; |294| 
;*  13              ; BRANCHCC OCCURS {$C$C36}        ; |290| 
;*----------------------------------------------------------------------------*
$C$L17:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 7

           XOR     .S1     1,A3,A3           ; |292| (P) <0,2> 
||         MVKH    .S2     _kernel$2,B16
||         CMPLT   .L1     A9,0,A8           ; |292| (P) <1,0> 
||         MPY32   .M1     A7,A9,A4          ; |294| (P) <1,0> 

           MV      .L1     A10,A6
||         MV      .L2     B11,B9
||         ADD     .S2     2,B16,B16         ; |292| (P) <0,4> 
||         AND     .S1X    B4,A3,A1          ; |292| (P) <0,4> 
||         ADD     .D1     A5,A4,A4          ; |294| (P) <0,4> 

   [ A1]   LDHU    .D2T2   *-B16(2),B6       ; |294| (P) <0,5> 
|| [ A1]   LDBU    .D1T1   *+A4[A6],A17      ; |294| (P) <0,5> 
||         XOR     .L1     1,A8,A9           ; |292| (P) <1,2> 
||         CMPLT   .L2X    A9,B9,B4          ; |292| (P) <1,2>  ^ 
||         ADD     .S1     1,A9,A8           ; |290| (P) <1,2>  ^ Define a twin register

           MVK     .S1     12,A2             ; |290| 
||         MV      .D1     A1,A3             ; |292| (P) <0,6> Split a long life
||         CMPLT   .L1     A8,0,A16          ; |292| (P) <2,0> 
||         MPY32   .M1     A7,A8,A4          ; |294| (P) <2,0> 

   [ A2]   BDEC    .S1     $C$L18,A2         ; |290| (P) <0,7> 
||         ADD     .L2     2,B16,B16         ; |292| (P) <1,4> 
||         AND     .L1X    B4,A9,A1          ; |292| (P) <1,4> 
||         ADD     .D1     A5,A4,A4          ; |294| (P) <1,4> 

           ROTL    .M1     A3,0,A0           ; |292| (P) <0,8> Split a long life
|| [ A1]   LDHU    .D2T2   *-B16(2),B6       ; |294| (P) <1,5> 
|| [ A1]   LDBU    .D1T1   *+A4[A6],A17      ; |294| (P) <1,5> 
||         XOR     .L1     1,A16,A16         ; |292| (P) <2,2> 
||         CMPLT   .L2X    A8,B9,B4          ; |292| (P) <2,2>  ^ 
||         ADD     .S1     1,A8,A8           ; |290| (P) <2,2>  ^ Define a twin register

	.dwpsn	file "task.c",line 290,column 0,is_stmt

           ZERO    .L2     B8                ; |289| 
||         ZERO    .S2     B7                ; |289| 
||         MV      .S1     A1,A3             ; |292| (P) <1,6> Split a long life
||         CMPLT   .L1     A8,0,A9           ; |292| (P) <3,0> 
||         MPY32   .M1     A7,A8,A4          ; |294| (P) <3,0> 

;** --------------------------------------------------------------------------*
$C$L18:    ; PIPED LOOP KERNEL
$C$DW$L$_gaussian_smooth$29$B:
	.dwpsn	file "task.c",line 291,column 0,is_stmt
;          EXCLUSIVE CPU CYCLES: 3

   [ A0]   ADD     .S2     B6,B7,B7          ; |295| <0,10> 
|| [ A0]   MPYU    .M2X    A17,B6,B5         ; |294| <0,10> 
|| [ A2]   BDEC    .S1     $C$L18,A2         ; |290| <1,7> 
||         ADD     .L2     2,B16,B16         ; |292| <2,4> 
||         AND     .L1X    B4,A16,A1         ; |292| <2,4> 
||         ADD     .D1     A5,A4,A4          ; |294| <2,4> 

           ROTL    .M1     A3,0,A0           ; |292| <1,8> Split a long life
|| [ A1]   LDHU    .D2T2   *-B16(2),B6       ; |294| <2,5> 
|| [ A1]   LDBU    .D1T1   *+A4[A6],A17      ; |294| <2,5> 
||         XOR     .L1     1,A9,A16          ; |292| <3,2> 
||         CMPLT   .L2X    A8,B9,B4          ; |292| <3,2>  ^ 
||         ADD     .S1     1,A8,A8           ; |290| <3,2>  ^ Define a twin register

	.dwpsn	file "task.c",line 297,column 0,is_stmt

   [ A0]   ADD     .L2     B5,B8,B8          ; |294| <0,12> 
||         MV      .S1     A1,A3             ; |292| <2,6> Split a long life
||         CMPLT   .L1     A8,0,A9           ; |292| <4,0> 
||         MPY32   .M1     A7,A8,A4          ; |294| <4,0> 

$C$DW$L$_gaussian_smooth$29$E:
;** --------------------------------------------------------------------------*
$C$L19:    ; PIPED LOOP EPILOG
;          EXCLUSIVE CPU CYCLES: 3

           ADD     .L1     1,A22,A22         ; |286| 
||         MV      .L2     B9,B11
||         MV      .S1     A6,A10
|| [ A0]   ADD     .S2     B6,B7,B7          ; |295| (E) <3,10> 
|| [ A0]   MPYU    .M2X    A17,B6,B5         ; |294| (E) <3,10> 

           MV      .L2X    A7,B10
||         ROTL    .M1     A3,0,A0           ; |292| (E) <4,8> Split a long life

           RINT                              ; interrupts on
|| [ A0]   ADD     .L2     B5,B8,B8          ; |294| (E) <3,12> 

;** --------------------------------------------------------------------------*
$C$DW$L$_gaussian_smooth$31$B:
;          EXCLUSIVE CPU CYCLES: 10
   [ A0]   MPYU    .M2X    A17,B6,B5         ; |294| (E) <4,10> 
           MVK     .S1     90,A4             ; |299| 

   [ A0]   ADD     .L2     B5,B8,B8          ; |294| (E) <4,12> 
||         MVKL    .S2     __divu,B5         ; |299| 

           MVKH    .S2     __divu,B5         ; |299| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("__divu")
	.dwattr $C$DW$63, DW_AT_TI_call
           CALL    .S2     B5                ; |299| 
           MV      .L1X    B8,A3
           MPY32   .M1     A4,A3,A4          ; |299| 
   [ A0]   ADD     .L2     B6,B7,B7          ; |295| (E) <4,10> 
           ADDKPC  .S2     $C$RL4,B3,0       ; |299| 
           MV      .L2     B7,B4             ; |299| 
$C$RL4:    ; CALL OCCURS {__divu} {0}        ; |299| 
$C$DW$L$_gaussian_smooth$31$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_gaussian_smooth$32$B:
;          EXCLUSIVE CPU CYCLES: 7

           SUB     .L1     A21,1,A0          ; |286| 
||         STH     .D1T1   A4,*A19           ; |299| 
||         ADD     .S1     A18,A19,A19       ; |286| 

   [ A0]   BNOP    .S2     $C$L16,1          ; |286| 
|| [ A0]   MV      .L1     A22,A3
|| [ A0]   MV      .S1X    B10,A7
|| [ A0]   CMPLT   .L2X    A22,B11,B4        ; |292| 
||         SUB     .D1     A21,1,A21         ; |286| 

   [ A0]   ADD     .L1     1,A3,A9           ; |290| (P) <0,2>  ^ Define a twin register
   [ A0]   MPY32   .M1     A7,A3,A4          ; |294| (P) <0,0> 
   [ A0]   MVKL    .S2     _kernel$2,B16
   [ A0]   CMPLT   .L1     A22,0,A3          ; |292| 
           ; BRANCHCC OCCURS {$C$L16}        ; |286| 
$C$DW$L$_gaussian_smooth$32$E:
;** --------------------------------------------------------------------------*
$C$L20:    
$C$DW$L$_gaussian_smooth$33$B:
;          EXCLUSIVE CPU CYCLES: 7

           SUB     .L1     A20,1,A0          ; |284| 
||         MPY32   .M2     B10,B18,B4
||         CMPGT   .L2     B17,0,B0          ; |286| 
||         ADD     .S1     1,A5,A5           ; |284| 
||         SUB     .D1     A20,1,A20         ; |284| 

   [ A0]   B       .S1     $C$L15            ; |284| 
|| [!A0]   MVK     .L2     0x1,B0            ; nullify predicate

   [!B0]   BNOP    .S1     $C$L20,2          ; |286| 
|| [ B0]   MVK     .L1     0xfffffff9,A22    ; |286| 
|| [ B0]   MV      .D1X    B10,A7

           ADD     .L1X    A5,B4,A3
	.dwpsn	file "task.c",line 301,column 0,is_stmt

           ADDAH   .D1     A11,A3,A19
||         MV      .L1     A22,A3

           ; BRANCHCC OCCURS {$C$L15}        ; |284| 
$C$DW$L$_gaussian_smooth$33$E:
;** --------------------------------------------------------------------------*
$C$L21:    
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _free,A3          ; |308| 
           MVKH    .S1     _free,A3          ; |308| 
           MV      .L1     A10,A4            ; |308| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_free")
	.dwattr $C$DW$64, DW_AT_TI_call
           CALL    .S2X    A3                ; |308| 
           ADDKPC  .S2     $C$RL5,B3,4       ; |308| 
$C$RL5:    ; CALL OCCURS {_free} {0}         ; |308| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8
           LDW     .D2T1   *++SP(8),A10      ; |309| 

           LDDW    .D2T2   *++SP,B11:B10     ; |309| 
||         MV      .L2     B13,B3            ; |309| 

$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x04)
	.dwattr $C$DW$65, DW_AT_TI_return

           LDDW    .D2T2   *++SP,B13:B12     ; |309| 
||         RET     .S2     B3                ; |309| 

           LDW     .D2T1   *++SP(8),A11      ; |309| 
	.dwpsn	file "task.c",line 309,column 1,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |309| 

$C$DW$66	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$66, DW_AT_name("/data/home/in4342-11/assignment2/Dirk/Merged_completeV5-neongppdsp/merged_dsp_gpp-COMMENTS/dsp/task.asm:$C$L15:1:1464962099")
	.dwattr $C$DW$66, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$66, DW_AT_TI_begin_line(0x11c)
	.dwattr $C$DW$66, DW_AT_TI_end_line(0x12d)
$C$DW$67	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$67, DW_AT_low_pc($C$DW$L$_gaussian_smooth$25$B)
	.dwattr $C$DW$67, DW_AT_high_pc($C$DW$L$_gaussian_smooth$25$E)
$C$DW$68	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$68, DW_AT_low_pc($C$DW$L$_gaussian_smooth$26$B)
	.dwattr $C$DW$68, DW_AT_high_pc($C$DW$L$_gaussian_smooth$26$E)
$C$DW$69	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$69, DW_AT_low_pc($C$DW$L$_gaussian_smooth$33$B)
	.dwattr $C$DW$69, DW_AT_high_pc($C$DW$L$_gaussian_smooth$33$E)

$C$DW$70	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$70, DW_AT_name("/data/home/in4342-11/assignment2/Dirk/Merged_completeV5-neongppdsp/merged_dsp_gpp-COMMENTS/dsp/task.asm:$C$L16:2:1464962099")
	.dwattr $C$DW$70, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x11e)
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x12b)
$C$DW$71	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$71, DW_AT_low_pc($C$DW$L$_gaussian_smooth$27$B)
	.dwattr $C$DW$71, DW_AT_high_pc($C$DW$L$_gaussian_smooth$27$E)
$C$DW$72	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$72, DW_AT_low_pc($C$DW$L$_gaussian_smooth$31$B)
	.dwattr $C$DW$72, DW_AT_high_pc($C$DW$L$_gaussian_smooth$31$E)
$C$DW$73	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$73, DW_AT_low_pc($C$DW$L$_gaussian_smooth$32$B)
	.dwattr $C$DW$73, DW_AT_high_pc($C$DW$L$_gaussian_smooth$32$E)

$C$DW$74	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$74, DW_AT_name("/data/home/in4342-11/assignment2/Dirk/Merged_completeV5-neongppdsp/merged_dsp_gpp-COMMENTS/dsp/task.asm:$C$L18:3:1464962099")
	.dwattr $C$DW$74, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$74, DW_AT_TI_begin_line(0x122)
	.dwattr $C$DW$74, DW_AT_TI_end_line(0x129)
$C$DW$75	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$75, DW_AT_low_pc($C$DW$L$_gaussian_smooth$29$B)
	.dwattr $C$DW$75, DW_AT_high_pc($C$DW$L$_gaussian_smooth$29$E)
	.dwendtag $C$DW$74

	.dwendtag $C$DW$70

	.dwendtag $C$DW$66


$C$DW$76	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$76, DW_AT_name("/data/home/in4342-11/assignment2/Dirk/Merged_completeV5-neongppdsp/merged_dsp_gpp-COMMENTS/dsp/task.asm:$C$L8:1:1464962099")
	.dwattr $C$DW$76, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$76, DW_AT_TI_begin_line(0x103)
	.dwattr $C$DW$76, DW_AT_TI_end_line(0x113)
$C$DW$77	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$77, DW_AT_low_pc($C$DW$L$_gaussian_smooth$14$B)
	.dwattr $C$DW$77, DW_AT_high_pc($C$DW$L$_gaussian_smooth$14$E)
$C$DW$78	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$78, DW_AT_low_pc($C$DW$L$_gaussian_smooth$15$B)
	.dwattr $C$DW$78, DW_AT_high_pc($C$DW$L$_gaussian_smooth$15$E)
$C$DW$79	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$79, DW_AT_low_pc($C$DW$L$_gaussian_smooth$22$B)
	.dwattr $C$DW$79, DW_AT_high_pc($C$DW$L$_gaussian_smooth$22$E)

$C$DW$80	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$80, DW_AT_name("/data/home/in4342-11/assignment2/Dirk/Merged_completeV5-neongppdsp/merged_dsp_gpp-COMMENTS/dsp/task.asm:$C$L9:2:1464962099")
	.dwattr $C$DW$80, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$80, DW_AT_TI_begin_line(0x105)
	.dwattr $C$DW$80, DW_AT_TI_end_line(0x111)
$C$DW$81	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$81, DW_AT_low_pc($C$DW$L$_gaussian_smooth$16$B)
	.dwattr $C$DW$81, DW_AT_high_pc($C$DW$L$_gaussian_smooth$16$E)
$C$DW$82	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$82, DW_AT_low_pc($C$DW$L$_gaussian_smooth$20$B)
	.dwattr $C$DW$82, DW_AT_high_pc($C$DW$L$_gaussian_smooth$20$E)
$C$DW$83	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$83, DW_AT_low_pc($C$DW$L$_gaussian_smooth$21$B)
	.dwattr $C$DW$83, DW_AT_high_pc($C$DW$L$_gaussian_smooth$21$E)

$C$DW$84	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$84, DW_AT_name("/data/home/in4342-11/assignment2/Dirk/Merged_completeV5-neongppdsp/merged_dsp_gpp-COMMENTS/dsp/task.asm:$C$L11:3:1464962099")
	.dwattr $C$DW$84, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$84, DW_AT_TI_begin_line(0x109)
	.dwattr $C$DW$84, DW_AT_TI_end_line(0x110)
$C$DW$85	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$85, DW_AT_low_pc($C$DW$L$_gaussian_smooth$18$B)
	.dwattr $C$DW$85, DW_AT_high_pc($C$DW$L$_gaussian_smooth$18$E)
	.dwendtag $C$DW$84

	.dwendtag $C$DW$80

	.dwendtag $C$DW$76


$C$DW$86	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$86, DW_AT_name("/data/home/in4342-11/assignment2/Dirk/Merged_completeV5-neongppdsp/merged_dsp_gpp-COMMENTS/dsp/task.asm:$C$L2:1:1464962099")
	.dwattr $C$DW$86, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$86, DW_AT_TI_begin_line(0xfa)
	.dwattr $C$DW$86, DW_AT_TI_end_line(0x100)
$C$DW$87	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$87, DW_AT_low_pc($C$DW$L$_gaussian_smooth$7$B)
	.dwattr $C$DW$87, DW_AT_high_pc($C$DW$L$_gaussian_smooth$7$E)
$C$DW$88	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$88, DW_AT_low_pc($C$DW$L$_gaussian_smooth$11$B)
	.dwattr $C$DW$88, DW_AT_high_pc($C$DW$L$_gaussian_smooth$11$E)

$C$DW$89	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$89, DW_AT_name("/data/home/in4342-11/assignment2/Dirk/Merged_completeV5-neongppdsp/merged_dsp_gpp-COMMENTS/dsp/task.asm:$C$L4:2:1464962099")
	.dwattr $C$DW$89, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$89, DW_AT_TI_begin_line(0xfc)
	.dwattr $C$DW$89, DW_AT_TI_end_line(0xff)
$C$DW$90	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$90, DW_AT_low_pc($C$DW$L$_gaussian_smooth$9$B)
	.dwattr $C$DW$90, DW_AT_high_pc($C$DW$L$_gaussian_smooth$9$E)
	.dwendtag $C$DW$89

	.dwendtag $C$DW$86

	.dwattr $C$DW$55, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0x135)
	.dwattr $C$DW$55, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$55

	.sect	".text"
	.clink

$C$DW$91	.dwtag  DW_TAG_subprogram, DW_AT_name("Task_notify")
	.dwattr $C$DW$91, DW_AT_low_pc(_Task_notify)
	.dwattr $C$DW$91, DW_AT_high_pc(0x00)
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_Task_notify")
	.dwattr $C$DW$91, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$91, DW_AT_TI_begin_line(0xa7)
	.dwattr $C$DW$91, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$91, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr $C$DW$91, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 168,column 1,is_stmt,address _Task_notify
$C$DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_name("eventNo")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_eventNo")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg4]
$C$DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg20]
$C$DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: Task_notify                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_Task_notify:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 24
           MVKL    .S2     _count$1,B6
           MVKH    .S2     _count$1,B6
           LDW     .D2T2   *B6,B5            ; |174| 
           MVKL    .S1     _rows,A5
           MVKH    .S1     _rows,A5
           MV      .L1     A6,A3             ; |168| 
           MVKL    .S1     _buf,A8
           ADD     .L2     1,B5,B5           ; |174| 
           MVKL    .S1     _cols,A4
           CMPEQ   .L1X    B5,2,A0           ; |182| 
   [!A0]   LDW     .D1T1   *A5,A3
   [ A0]   STW     .D1T1   A3,*A5            ; |183| 
           CMPEQ   .L2     B5,1,B0           ; |175| 
           MVKH    .S1     _buf,A8
           MVKL    .S2     _length,B7

           MVKL    .S1     _SEM_post,A3      ; |191| 
||         MPY32   .M1     A3,A6,A7          ; |187| 

           MVKH    .S1     _SEM_post,A3      ; |191| 
   [ B0]   STW     .D1T1   A6,*A8            ; |176| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_SEM_post")
	.dwattr $C$DW$95, DW_AT_TI_call
	.dwattr $C$DW$95, DW_AT_TI_return
           CALLRET .S2X    A3                ; |191| 
           CMPEQ   .L2     B5,3,B0           ; |185| 
           MVKH    .S1     _cols,A4
           MVKH    .S2     _length,B7

   [ B0]   STW     .D1T1   A6,*A4            ; |186| 
||         STW     .D2T2   B5,*B6            ; |174| 

	.dwpsn	file "task.c",line 192,column 1,is_stmt

   [ B0]   STW     .D2T1   A7,*B7            ; |187| 
||         ADD     .L1X    4,B4,A4           ; |191| 

$C$RL6:    ; CALL-RETURN OCCURS {_SEM_post} {0}  ; |191| 
	.dwattr $C$DW$91, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$91, DW_AT_TI_end_line(0xc0)
	.dwattr $C$DW$91, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$91

	.sect	".text"
	.clink
	.global	_Task_execute

$C$DW$96	.dwtag  DW_TAG_subprogram, DW_AT_name("Task_execute")
	.dwattr $C$DW$96, DW_AT_low_pc(_Task_execute)
	.dwattr $C$DW$96, DW_AT_high_pc(0x00)
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_Task_execute")
	.dwattr $C$DW$96, DW_AT_external
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$96, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$96, DW_AT_TI_begin_line(0x71)
	.dwattr $C$DW$96, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$96, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$96, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 114,column 1,is_stmt,address _Task_execute
$C$DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: Task_execute                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                  *
;******************************************************************************
_Task_execute:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _SEM_pend,A3      ; |116| 
           MVKH    .S1     _SEM_pend,A3      ; |116| 
           STW     .D2T2   B10,*SP--(8)      ; |114| 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$98, DW_AT_TI_call
           CALL    .S2X    A3                ; |116| 
           STDW    .D2T1   A11:A10,*SP--     ; |114| 
           MV      .L1X    B3,A11            ; |114| 
           ADDKPC  .S2     $C$RL7,B3,1       ; |116| 

           ADD     .L1     4,A4,A4           ; |116| 
||         MVK     .L2     0xffffffff,B4     ; |116| 

$C$RL7:    ; CALL OCCURS {_SEM_pend} {0}     ; |116| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 42
           MVKL    .S2     _BCACHE_inv,B5    ; |119| 
           MVKL    .S2     _buf,B10
           MVKH    .S2     _BCACHE_inv,B5    ; |119| 

           MVKL    .S1     _length,A10
||         MVKH    .S2     _buf,B10

$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("_BCACHE_inv")
	.dwattr $C$DW$99, DW_AT_TI_call

           CALL    .S2     B5                ; |119| 
||         MVKH    .S1     _length,A10

           LDW     .D2T1   *B10,A4           ; |119| 
||         LDW     .D1T2   *A10,B4           ; |119| 

           ADDKPC  .S2     $C$RL8,B3,2       ; |119| 
           MVK     .L1     0x1,A6            ; |119| 
$C$RL8:    ; CALL OCCURS {_BCACHE_inv} {0}   ; |119| 
           MVKL    .S1     _gaussian_smooth,A5 ; |132| 
           MVKL    .S1     _rows,A3

           MVKH    .S1     _gaussian_smooth,A5 ; |132| 
||         MVKL    .S2     _cols,B4

           MVKH    .S1     _rows,A3
||         MVKH    .S2     _cols,B4

$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("_gaussian_smooth")
	.dwattr $C$DW$100, DW_AT_TI_call

           CALL    .S2X    A5                ; |132| 
||         LDW     .D2T1   *B4,A6            ; |132| 
||         LDW     .D1T2   *A3,B4            ; |132| 
||         MV      .L1X    B10,A3            ; |132| 

           LDW     .D1T1   *A3,A4            ; |132| 
           ADDKPC  .S2     $C$RL9,B3,3       ; |132| 
$C$RL9:    ; CALL OCCURS {_gaussian_smooth} {0}  ; |132| 
           LDW     .D1T1   *A10,A3           ; |135| 
           MV      .L2     B10,B4            ; |132| 
           MVK     .L1     0x1,A6            ; |135| 
           NOP             2

           ADD     .L1     A3,A3,A4          ; |135| 
||         MVKL    .S1     _BCACHE_wb,A3     ; |135| 

           MVKH    .S1     _BCACHE_wb,A3     ; |135| 

           MV      .L2X    A4,B4             ; |135| 
||         LDW     .D2T1   *B4,A4            ; |135| 

$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("_BCACHE_wb")
	.dwattr $C$DW$101, DW_AT_TI_call
           CALL    .S2X    A3                ; |135| 
           ADDKPC  .S2     $C$RL10,B3,4      ; |135| 
$C$RL10:   ; CALL OCCURS {_BCACHE_wb} {0}    ; |135| 
           MVKL    .S2     _NOTIFY_notify,B5 ; |138| 
           MVKH    .S2     _NOTIFY_notify,B5 ; |138| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$102, DW_AT_TI_call
           CALL    .S2     B5                ; |138| 
           ADDKPC  .S2     $C$RL11,B3,3      ; |138| 

           ZERO    .L2     B6                ; |138| 
||         ZERO    .S2     B4                ; |138| 
||         MVK     .L1     0x1,A4            ; |138| 
||         MVK     .S1     0x5,A6            ; |138| 

$C$RL11:   ; CALL OCCURS {_NOTIFY_notify} {0}  ; |138| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L2X    A11,B3            ; |142| 
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_TI_return

           RET     .S2     B3                ; |142| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |142| 

           LDW     .D2T2   *++SP(8),B10      ; |142| 
           ZERO    .L1     A4                ; |141| 
	.dwpsn	file "task.c",line 142,column 1,is_stmt
           NOP             3
           ; BRANCH OCCURS {B3}              ; |142| 
	.dwattr $C$DW$96, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$96, DW_AT_TI_end_line(0x8e)
	.dwattr $C$DW$96, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$96

	.sect	".text"
	.clink
	.global	_Task_delete

$C$DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("Task_delete")
	.dwattr $C$DW$104, DW_AT_low_pc(_Task_delete)
	.dwattr $C$DW$104, DW_AT_high_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_Task_delete")
	.dwattr $C$DW$104, DW_AT_external
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$104, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$104, DW_AT_TI_begin_line(0x90)
	.dwattr $C$DW$104, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$104, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr $C$DW$104, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 145,column 1,is_stmt,address _Task_delete
$C$DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: Task_delete                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                  *
;******************************************************************************
_Task_delete:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _NOTIFY_unregister,A3 ; |151| 
           MVKH    .S1     _NOTIFY_unregister,A3 ; |151| 
           MVKL    .S2     _Task_notify,B6   ; |151| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_NOTIFY_unregister")
	.dwattr $C$DW$106, DW_AT_TI_call
           CALL    .S2X    A3                ; |151| 
           STW     .D2T2   B13,*SP--(8)      ; |145| 
           MVKH    .S2     _Task_notify,B6   ; |151| 
           MV      .L1     A4,A8             ; |145| 
           ZERO    .L2     B4                ; |151| 

           STDW    .D2T1   A11:A10,*SP--     ; |145| 
||         MV      .L1     A4,A11            ; |145| 
||         MV      .L2     B3,B13            ; |145| 
||         ADDKPC  .S2     $C$RL12,B3,0      ; |151| 
||         MVK     .S1     0x5,A6            ; |151| 
||         MVK     .D1     0x1,A4            ; |151| 

$C$RL12:   ; CALL OCCURS {_NOTIFY_unregister} {0}  ; |151| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8
           MVKL    .S2     _MEM_free,B5      ; |158| 

           MVKH    .S2     _MEM_free,B5      ; |158| 
||         MVKL    .S1     _DDR2,A3

$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("_MEM_free")
	.dwattr $C$DW$107, DW_AT_TI_call

           CALL    .S2     B5                ; |158| 
||         MVKH    .S1     _DDR2,A3

           MV      .L1     A4,A10            ; |151| 
||         LDW     .D1T1   *A3,A4            ; |158| 

           ADDKPC  .S2     $C$RL13,B3,2      ; |158| 

           MV      .L2X    A11,B4            ; |158| 
||         MVK     .S1     0x28,A6           ; |158| 

$C$RL13:   ; CALL OCCURS {_MEM_free} {0}     ; |158| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L2     B13,B3            ; |164| 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_return

           RET     .S2     B3                ; |164| 
||         MV      .L1     A10,A4            ; |163| 
||         LDDW    .D2T1   *++SP,A11:A10     ; |164| 

           LDW     .D2T2   *++SP(8),B13      ; |164| 
	.dwpsn	file "task.c",line 164,column 1,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |164| 
	.dwattr $C$DW$104, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$104, DW_AT_TI_end_line(0xa4)
	.dwattr $C$DW$104, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$104

	.sect	".text"
	.clink
	.global	_Task_create

$C$DW$109	.dwtag  DW_TAG_subprogram, DW_AT_name("Task_create")
	.dwattr $C$DW$109, DW_AT_low_pc(_Task_create)
	.dwattr $C$DW$109, DW_AT_high_pc(0x00)
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_Task_create")
	.dwattr $C$DW$109, DW_AT_external
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$109, DW_AT_TI_begin_file("task.c")
	.dwattr $C$DW$109, DW_AT_TI_begin_line(0x26)
	.dwattr $C$DW$109, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$109, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr $C$DW$109, DW_AT_TI_skeletal
	.dwpsn	file "task.c",line 39,column 1,is_stmt,address _Task_create
$C$DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_name("infoPtr")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_infoPtr")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg4]

;******************************************************************************
;* FUNCTION NAME: Task_create                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                  *
;******************************************************************************
_Task_create:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 9
           MVKL    .S1     _MEM_valloc,A3    ; |47| 

           MVKH    .S1     _MEM_valloc,A3    ; |47| 
||         STW     .D2T1   A11,*SP--(8)      ; |39| 

           STDW    .D2T2   B11:B10,*SP--     ; |39| 
||         MV      .L2X    A4,B10            ; |39| 
||         MVKL    .S1     _DDR2,A4

$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("_MEM_valloc")
	.dwattr $C$DW$111, DW_AT_TI_call

           CALL    .S2X    A3                ; |47| 
||         STW     .D2T1   A10,*SP--(8)      ; |39| 
||         MVKH    .S1     _DDR2,A4

           LDW     .D1T1   *A4,A4            ; |47| 
           MVK     .S2     0x28,B4           ; |47| 
           MV      .L2     B3,B11            ; |39| 
           ADDKPC  .S2     $C$RL14,B3,0      ; |47| 

           ZERO    .L1     A6                ; |47| 
||         ZERO    .L2     B6                ; |47| 

$C$RL14:   ; CALL OCCURS {_MEM_valloc} {0}   ; |47| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 14

           MVKL    .S2     _MPCSXFER_BufferSize,B4
||         MV      .L1     A4,A0             ; |50| 
||         ZERO    .D1     A10               ; |41| 
||         STW     .D2T1   A4,*B10           ; |47| 
||         ZERO    .L2     B8                ; |63| 
||         MVKL    .S1     __SEM_dopost,A5

           MVKH    .S2     _MPCSXFER_BufferSize,B4
|| [ A0]   MV      .L1     A0,A10            ; |56| 
||         MVK     .S1     0x5,A6            ; |74| 
||         MVK     .D1     0x1,A4            ; |74| 
||         ZERO    .L2     B9                ; |63| 

           LDHU    .D2T2   *B4,B5            ; |61| 
||         MVK     .L2     0x1,B4            ; |52| 
||         ADD     .D1     A10,24,A3         ; |87| 
||         MVKL    .S2     _Task_notify,B6   ; |74| 
||         MV      .L1     A10,A8            ; |74| 
||         MVKH    .S1     __SEM_dopost,A5

           MVKH    .S2     _Task_notify,B6   ; |74| 

           MV      .L1X    B4,A11            ; |61| 
||         MVKL    .S2     _NOTIFY_register,B7 ; |74| 
||         ZERO    .L2     B4                ; |63| 

   [ A0]   ZERO    .L1     A11               ; |40| 
||         MVKH    .S2     _NOTIFY_register,B7 ; |74| 

           MV      .L1     A11,A0            ; |74| 

   [ A0]   MVKL    .S1     _NOTIFY_notify,A3 ; |91| 
|| [ A0]   MVK     .L1     0x5,A6            ; |91| 
|| [ A0]   MVK     .D1     0x1,A4            ; |91| 
|| [ A0]   ZERO    .L2     B4                ; |91| 
|| [ A0]   ZERO    .S2     B6                ; |91| 

   [ A0]   B       .S2     $C$L22            ; |61| 
|| [ A0]   MVKH    .S1     _NOTIFY_notify,A3 ; |91| 
|| [!A0]   STW     .D1T2   B8,*+A10(20)      ; |86| 

   [ A0]   BNOP    .S1     $C$L24,3          ; |89| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("_NOTIFY_register")
	.dwattr $C$DW$112, DW_AT_TI_call

   [!A0]   CALL    .S2     B7                ; |74| 
|| [!A0]   STW     .D1T2   B5,*+A10(36)      ; |64| 

           ; BRANCHCC OCCURS {$C$L22}        ; |61| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           STW     .D1T2   B9,*A10           ; |63| 
           STW     .D1T1   A5,*+A10(16)      ; |89| 
           STW     .D1T2   B8,*+A10(12)      ; |88| 
           STW     .D1T1   A3,*+A10(24)      ; |87| 

           STW     .D1T1   A3,*+A10(28)      ; |87| 
||         ADDKPC  .S2     $C$RL15,B3,0      ; |74| 

$C$RL15:   ; CALL OCCURS {_NOTIFY_register} {0}  ; |74| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           MV      .L1     A4,A0             ; |74| 
||         MV      .S1     A4,A11            ; |74| 

   [ A0]   BNOP    .S2     $C$L23,4          ; |74| 
|| [!A0]   MVKL    .S1     _NOTIFY_notify,A3 ; |91| 
|| [!A0]   MVK     .L1     0x1,A4            ; |91| 
|| [!A0]   ZERO    .L2     B6                ; |91| 
|| [!A0]   ZERO    .D2     B4                ; |91| 
|| [!A0]   MVK     .D1     0x5,A6            ; |91| 

   [!A0]   MVKH    .S1     _NOTIFY_notify,A3 ; |91| 
           ; BRANCHCC OCCURS {$C$L23}        ; |74| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
   [ A0]   BNOP    .S1     $C$L24,4          ; |89| 
;** --------------------------------------------------------------------------*
$C$L22:    
;          EXCLUSIVE CPU CYCLES: 1
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("_NOTIFY_notify")
	.dwattr $C$DW$113, DW_AT_TI_call
   [!A0]   CALL    .S2X    A3                ; |91| 
           ; BRANCHCC OCCURS {$C$L24}        ; |89| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 5
           ADDKPC  .S2     $C$RL16,B3,4      ; |91| 
$C$RL16:   ; CALL OCCURS {_NOTIFY_notify} {0}  ; |91| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           MVKL    .S1     _SEM_pend,A3      ; |105| 
||         MV      .L1     A4,A0             ; |91| 

   [!A0]   BNOP    .S2     $C$L25,1          ; |91| 
||         MVKH    .S1     _SEM_pend,A3      ; |105| 

$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$114, DW_AT_TI_call
   [!A0]   CALL    .S2X    A3                ; |105| 
           MV      .L1     A4,A11            ; |91| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L25}        ; |91| 
;** --------------------------------------------------------------------------*
$C$L23:    
;          EXCLUSIVE CPU CYCLES: 7

           LDW     .D2T1   *++SP(8),A10      ; |111| 
||         MV      .L2     B11,B3            ; |111| 

$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x04)
	.dwattr $C$DW$115, DW_AT_TI_return

           LDDW    .D2T2   *++SP,B11:B10     ; |111| 
||         RET     .S2     B3                ; |111| 

           LDW     .D2T1   *++SP(8),A11      ; |111| 
           NOP             4
           ; BRANCH OCCURS {B3}              ; |111| 
;** --------------------------------------------------------------------------*
$C$L24:    
;          EXCLUSIVE CPU CYCLES: 7
           MVKL    .S1     _SEM_pend,A3      ; |105| 
           MVKH    .S1     _SEM_pend,A3      ; |105| 
           NOP             1
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$116, DW_AT_TI_call
           CALL    .S2X    A3                ; |105| 
           NOP             3
;** --------------------------------------------------------------------------*
$C$L25:    
;          EXCLUSIVE CPU CYCLES: 2
           ADD     .L1     4,A10,A4          ; |105| 

           ADD     .L1     4,A10,A10         ; |105| 
||         MVK     .L2     0xffffffff,B4     ; |105| 
||         ADDKPC  .S2     $C$RL17,B3,0      ; |105| 

$C$RL17:   ; CALL OCCURS {_SEM_pend} {0}     ; |105| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 17
           MVKL    .S1     _SEM_pend,A3      ; |107| 
           MVKH    .S1     _SEM_pend,A3      ; |107| 
           MV      .L1     A10,A4            ; |107| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$117, DW_AT_TI_call
           CALL    .S2X    A3                ; |107| 
           MVK     .L2     0xffffffff,B4     ; |107| 
           ADDKPC  .S2     $C$RL18,B3,3      ; |107| 
$C$RL18:   ; CALL OCCURS {_SEM_pend} {0}     ; |107| 
           MVKL    .S2     _SEM_pend,B5      ; |108| 
           MVKH    .S2     _SEM_pend,B5      ; |108| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_SEM_pend")
	.dwattr $C$DW$118, DW_AT_TI_call
           CALL    .S2     B5                ; |108| 
           ADDKPC  .S2     $C$RL19,B3,3      ; |108| 

           MV      .L1     A10,A4            ; |108| 
||         MVK     .L2     0xffffffff,B4     ; |108| 

$C$RL19:   ; CALL OCCURS {_SEM_pend} {0}     ; |108| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           LDW     .D2T1   *++SP(8),A10      ; |111| 
||         MV      .L2     B11,B3            ; |111| 

$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x04)
	.dwattr $C$DW$119, DW_AT_TI_return

           LDDW    .D2T2   *++SP,B11:B10     ; |111| 
||         RET     .S2     B3                ; |111| 

           MV      .L1     A11,A4            ; |108| 
||         LDW     .D2T1   *++SP(8),A11      ; |111| 

	.dwpsn	file "task.c",line 111,column 1,is_stmt
           NOP             4
           ; BRANCH OCCURS {B3}              ; |111| 
	.dwattr $C$DW$109, DW_AT_TI_end_file("task.c")
	.dwattr $C$DW$109, DW_AT_TI_end_line(0x6f)
	.dwattr $C$DW$109, DW_AT_TI_end_column(0x01)
	.dwendtag $C$DW$109

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_MEM_free
	.global	_MEM_valloc
	.global	_SEM_pend
	.global	_SEM_post
	.global	__SEM_dopost
	.global	_NOTIFY_register
	.global	_NOTIFY_unregister
	.global	_NOTIFY_notify
	.global	_BCACHE_inv
	.global	_BCACHE_wb
	.global	_malloc
	.global	_free
	.global	_DDR2
	.global	_MPCSXFER_BufferSize
	.global	__divi
	.global	__divu

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("Ptr")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)

$C$DW$T$25	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$120	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$T$25

$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x20)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Fxn")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$T$56	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
$C$DW$121	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$37)
$C$DW$122	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$39)
$C$DW$123	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$39)
	.dwendtag $C$DW$T$56

$C$DW$T$57	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_address_class(0x20)
$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("FnNotifyCbck")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$64	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$64, DW_AT_address_class(0x20)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x20)
$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("Int")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$72	.dwtag  DW_TAG_typedef, DW_AT_name("Uns")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$12, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$12, DW_AT_bit_offset(0x18)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$13, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$13, DW_AT_bit_offset(0x18)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("QUE_Elem")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x08)
$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_name("next")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$125, DW_AT_name("prev")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_prev")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$20

$C$DW$T$19	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$19, DW_AT_address_class(0x20)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Obj")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("KNL_Job")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x10)
$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$126, DW_AT_name("wListElem")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_wListElem")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$127, DW_AT_name("wCount")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_wCount")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$128, DW_AT_name("fxn")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28

$C$DW$T$23	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x20)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_JobHandle")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Job")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
$C$DW$T$30	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$30, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$30, DW_AT_name("signed char")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$T$31	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x20)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("String")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("Char")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("SEM_Obj")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x20)
$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$129, DW_AT_name("job")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_job")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$130, DW_AT_name("count")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$131, DW_AT_name("pendQ")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_pendQ")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$132, DW_AT_name("name")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$33

$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Obj")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$T$51	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$51, DW_AT_address_class(0x20)
$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Handle")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("Task_TransferInfo_tag")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x28)
$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$133, DW_AT_name("dataBuf")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_dataBuf")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$134, DW_AT_name("notifySemObj")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_notifySemObj")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$135, DW_AT_name("bufferSize")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_bufferSize")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$38

$C$DW$T$82	.dwtag  DW_TAG_typedef, DW_AT_name("Task_TransferInfo")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
$C$DW$T$83	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$83, DW_AT_address_class(0x20)
$C$DW$T$84	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_address_class(0x20)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg0]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg1]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg2]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg3]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg4]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg5]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg6]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg7]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg8]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg9]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg10]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg11]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg12]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg13]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg14]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg15]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg16]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg17]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg18]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg19]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg20]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg21]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg22]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg23]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg24]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg25]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg26]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg27]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg28]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg29]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg30]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg31]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x20]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x21]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x22]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x23]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x24]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x25]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x26]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x27]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x28]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x29]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x30]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x31]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x32]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x33]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x34]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x35]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x36]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x37]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x38]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x39]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x40]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x41]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x42]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x43]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x44]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x45]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x46]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x47]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x48]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x49]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x50]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x51]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x52]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x53]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x54]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x55]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x56]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x57]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x58]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x59]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x60]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x61]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x62]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x63]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x64]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x65]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x66]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x67]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x68]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x69]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x70]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x71]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x72]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x73]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x74]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x75]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x76]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x77]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x78]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x79]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

