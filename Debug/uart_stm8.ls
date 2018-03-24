   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
2467                     ; 30 void uart_init(void)
2467                     ; 31 {
2469                     	switch	.text
2470  0000               _uart_init:
2474                     ; 34 	UART3_CR1 = 0x00;
2476  0000 725f5234      	clr	_UART1_CR1
2477                     ; 35 	UART3_CR3 = 0x00;
2479  0004 725f5236      	clr	_UART1_CR3
2480                     ; 36 	UART3_CR4 = 0x00;
2482  0008 725f5237      	clr	_UART1_CR4
2483                     ; 39 		UART3_BRR2 = (u8)(((BAUDSETTING >> 8) & 0xF0) | (BAUDSETTING & 0x0F));
2485  000c 350a5233      	mov	_UART1_BRR2,#10
2486                     ; 40 		UART3_BRR1 = (u8)((BAUDSETTING >> 4) & 0xFF);
2488  0010 35085232      	mov	_UART1_BRR1,#8
2489                     ; 47 	UART3_CR2 = 0x0C;	// Done last as enables transmitter and reciever
2491  0014 350c5235      	mov	_UART1_CR2,#12
2492                     ; 48 }
2495  0018 81            	ret
2519                     ; 55 u8 ischar(void)
2519                     ; 56 {
2520                     	switch	.text
2521  0019               _ischar:
2525                     ; 57 	return((UART3_SR & 0x20) !=0);
2527  0019 c65230        	ld	a,_UART1_SR
2528  001c a520          	bcp	a,#32
2529  001e 2704          	jreq	L01
2530  0020 a601          	ld	a,#1
2531  0022 2001          	jra	L21
2532  0024               L01:
2533  0024 4f            	clr	a
2534  0025               L21:
2537  0025 81            	ret
2562                     ; 65  u8 readchar(void)
2562                     ; 66 {
2563                     	switch	.text
2564  0026               _readchar:
2568  0026               L3261:
2569                     ; 67 	while(!ischar()) { }
2571  0026 adf1          	call	_ischar
2573  0028 4d            	tnz	a
2574  0029 27fb          	jreq	L3261
2575                     ; 68 	return(UART3_DR);
2577  002b c65231        	ld	a,_UART1_DR
2580  002e 81            	ret
2625                     ; 76 void outchar(char c)
2625                     ; 77 {
2626                     	switch	.text
2627  002f               _outchar:
2629  002f 88            	push	a
2630  0030 88            	push	a
2631       00000001      OFST:	set	1
2634  0031               L1561:
2635                     ; 80 		u8 stat = UART3_SR;
2637  0031 c65230        	ld	a,_UART1_SR
2638  0034 6b01          	ld	(OFST+0,sp),a
2640                     ; 81 		if (stat & 0x40) break; // UART2_TC (transmision complete)
2642  0036 7b01          	ld	a,(OFST+0,sp)
2643  0038 a540          	bcp	a,#64
2644  003a 27f5          	jreq	L1561
2646                     ; 84 	UART3_DR = c;
2648  003c 7b02          	ld	a,(OFST+1,sp)
2649  003e c75231        	ld	_UART1_DR,a
2650                     ; 85 }
2653  0041 85            	popw	x
2654  0042 81            	ret
2725                     ; 92 void _outhex(u32 v, u8 len)
2725                     ; 93 {
2726                     	switch	.text
2727  0043               __outhex:
2729  0043 5206          	subw	sp,#6
2730       00000006      OFST:	set	6
2733                     ; 98 	for (i = 0; i < len; i++)
2735  0045 0f05          	clr	(OFST-1,sp)
2738  0047 2048          	jra	L1271
2739  0049               L5171:
2740                     ; 100 		s = ((len - i) - 1) << 2;
2742  0049 7b0d          	ld	a,(OFST+7,sp)
2743  004b 5f            	clrw	x
2744  004c 1005          	sub	a,(OFST-1,sp)
2745  004e 2401          	jrnc	L22
2746  0050 5a            	decw	x
2747  0051               L22:
2748  0051 02            	rlwa	x,a
2749  0052 58            	sllw	x
2750  0053 58            	sllw	x
2751  0054 1d0004        	subw	x,#4
2752  0057 cd0000        	call	c_itolx
2754  005a 96            	ldw	x,sp
2755  005b 1c0001        	addw	x,#OFST-5
2756  005e cd0000        	call	c_rtol
2759                     ; 101 		c = (v >> s) & 15;
2761  0061 96            	ldw	x,sp
2762  0062 1c0009        	addw	x,#OFST+3
2763  0065 cd0000        	call	c_ltor
2765  0068 7b04          	ld	a,(OFST-2,sp)
2766  006a cd0000        	call	c_lursh
2768  006d b603          	ld	a,c_lreg+3
2769  006f a40f          	and	a,#15
2770  0071 b703          	ld	c_lreg+3,a
2771  0073 3f02          	clr	c_lreg+2
2772  0075 3f01          	clr	c_lreg+1
2773  0077 3f00          	clr	c_lreg
2774  0079 b603          	ld	a,c_lreg+3
2775  007b 6b06          	ld	(OFST+0,sp),a
2777                     ; 102 		if (c > 9) c += (65 - 48 - 10);
2779  007d 7b06          	ld	a,(OFST+0,sp)
2780  007f a10a          	cp	a,#10
2781  0081 2506          	jrult	L5271
2784  0083 7b06          	ld	a,(OFST+0,sp)
2785  0085 ab07          	add	a,#7
2786  0087 6b06          	ld	(OFST+0,sp),a
2788  0089               L5271:
2789                     ; 103 		outchar(c + 48);
2791  0089 7b06          	ld	a,(OFST+0,sp)
2792  008b ab30          	add	a,#48
2793  008d ada0          	call	_outchar
2795                     ; 98 	for (i = 0; i < len; i++)
2797  008f 0c05          	inc	(OFST-1,sp)
2799  0091               L1271:
2802  0091 7b05          	ld	a,(OFST-1,sp)
2803  0093 110d          	cp	a,(OFST+7,sp)
2804  0095 25b2          	jrult	L5171
2805                     ; 105 }
2808  0097 5b06          	addw	sp,#6
2809  0099 81            	ret
2845                     ; 112 void outstring(char *s)
2845                     ; 113 {
2846                     	switch	.text
2847  009a               _outstring:
2849  009a 89            	pushw	x
2850       00000000      OFST:	set	0
2853  009b 200d          	jra	L7471
2854  009d               L5471:
2855                     ; 116 		outchar(*s++);
2857  009d 1e01          	ldw	x,(OFST+1,sp)
2858  009f 1c0001        	addw	x,#1
2859  00a2 1f01          	ldw	(OFST+1,sp),x
2860  00a4 1d0001        	subw	x,#1
2861  00a7 f6            	ld	a,(x)
2862  00a8 ad85          	call	_outchar
2864  00aa               L7471:
2865                     ; 114 	while (*s != '\0')
2867  00aa 1e01          	ldw	x,(OFST+1,sp)
2868  00ac 7d            	tnz	(x)
2869  00ad 26ee          	jrne	L5471
2870                     ; 118 }
2873  00af 85            	popw	x
2874  00b0 81            	ret
2909                     ; 125 void outhex8(u8 d)
2909                     ; 126 {
2910                     	switch	.text
2911  00b1               _outhex8:
2915                     ; 127 	_outhex(d,2);
2917  00b1 4b02          	push	#2
2918  00b3 b703          	ld	c_lreg+3,a
2919  00b5 3f02          	clr	c_lreg+2
2920  00b7 3f01          	clr	c_lreg+1
2921  00b9 3f00          	clr	c_lreg
2922  00bb be02          	ldw	x,c_lreg+2
2923  00bd 89            	pushw	x
2924  00be be00          	ldw	x,c_lreg
2925  00c0 89            	pushw	x
2926  00c1 ad80          	call	__outhex
2928  00c3 5b05          	addw	sp,#5
2929                     ; 128 }
2932  00c5 81            	ret
2967                     ; 130 void outhex16(u16 d)
2967                     ; 131 {
2968                     	switch	.text
2969  00c6               _outhex16:
2973                     ; 132 	_outhex(d,4);
2975  00c6 4b04          	push	#4
2976  00c8 cd0000        	call	c_uitolx
2978  00cb be02          	ldw	x,c_lreg+2
2979  00cd 89            	pushw	x
2980  00ce be00          	ldw	x,c_lreg
2981  00d0 89            	pushw	x
2982  00d1 cd0043        	call	__outhex
2984  00d4 5b05          	addw	sp,#5
2985                     ; 133 }
2988  00d6 81            	ret
3023                     ; 135 void outhex32(u32 d)
3023                     ; 136 {
3024                     	switch	.text
3025  00d7               _outhex32:
3027       00000000      OFST:	set	0
3030                     ; 137 	_outhex(d,8);
3032  00d7 4b08          	push	#8
3033  00d9 1e06          	ldw	x,(OFST+6,sp)
3034  00db 89            	pushw	x
3035  00dc 1e06          	ldw	x,(OFST+6,sp)
3036  00de 89            	pushw	x
3037  00df cd0043        	call	__outhex
3039  00e2 5b05          	addw	sp,#5
3040                     ; 138 }
3043  00e4 81            	ret
3056                     	xdef	_outhex32
3057                     	xdef	_outhex16
3058                     	xdef	_outhex8
3059                     	xdef	__outhex
3060                     	xdef	_outstring
3061                     	xdef	_outchar
3062                     	xdef	_readchar
3063                     	xdef	_ischar
3064                     	xdef	_uart_init
3065                     	xref.b	c_lreg
3084                     	xref	c_uitolx
3085                     	xref	c_lursh
3086                     	xref	c_ltor
3087                     	xref	c_rtol
3088                     	xref	c_itolx
3089                     	end
