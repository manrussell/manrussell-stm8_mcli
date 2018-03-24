   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
2470                     ; 22 u32 main ( void )
2470                     ; 23 {
2472                     	switch	.text
2473  0000               _main:
2477                     ; 24   CLK_CKDIVR = 0x00;				// Main freq divided by 1 = Full Freq
2479  0000 725f50c6      	clr	_CLK_CKDIVR
2480                     ; 34 	PD_DDR = 0x1F;						// Leave top 3 bits as input
2482  0004 351f5011      	mov	_PD_DDR,#31
2483                     ; 35 	PD_CR1 = 0x1F;						// top 3 bits have pull up
2485  0008 351f5012      	mov	_PD_CR1,#31
2486                     ; 36 	PD_CR2 = 0x00;
2488  000c 725f5013      	clr	_PD_CR2
2489                     ; 40 	uart_init();
2491  0010 cd0000        	call	_uart_init
2493                     ; 42 	outstring("\n\nSTM8 Test #06 \n\n");
2495  0013 ae0017        	ldw	x,#L1061
2496  0016 cd0000        	call	_outstring
2498                     ; 45 	EnableInterrupts();
2501  0019 9a            RIM
2503                     ; 54     outchar (0x1b );
2506  001a a61b          	ld	a,#27
2507  001c cd0000        	call	_outchar
2509                     ; 55     outstring("[k");
2511  001f ae0014        	ldw	x,#L3061
2512  0022 cd0000        	call	_outstring
2514                     ; 59 	outstring ( "\n!WELCOME TO M-Cli!");
2516  0025 ae0000        	ldw	x,#L5061
2517  0028 cd0000        	call	_outstring
2519                     ; 60 	m_cli();
2521  002b cd0000        	call	_m_cli
2523                     ; 62 	return 0;
2525  002e ae0000        	ldw	x,#0
2526  0031 bf02          	ldw	c_lreg+2,x
2527  0033 ae0000        	ldw	x,#0
2528  0036 bf00          	ldw	c_lreg,x
2531  0038 81            	ret
2544                     	xdef	_main
2545                     	xref	_m_cli
2546                     	xref	_outstring
2547                     	xref	_outchar
2548                     	xref	_uart_init
2549                     .const:	section	.text
2550  0000               L5061:
2551  0000 0a2157454c43  	dc.b	10,33,87,69,76,67
2552  0006 4f4d4520544f  	dc.b	"OME TO M-Cli!",0
2553  0014               L3061:
2554  0014 5b6b00        	dc.b	"[k",0
2555  0017               L1061:
2556  0017 0a0a53544d38  	dc.b	10,10,83,84,77,56
2557  001d 205465737420  	dc.b	" Test #06 ",10
2558  0028 0a00          	dc.b	10,0
2559                     	xref.b	c_lreg
2579                     	end
