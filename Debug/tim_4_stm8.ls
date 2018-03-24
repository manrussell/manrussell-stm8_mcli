   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
2434                     	bsct
2435  0000               _tim4_tick:
2436  0000 00000000      	dc.l	0
2468                     ; 13 void TIM4_timer_init(void)
2468                     ; 14 {
2470                     	switch	.text
2471  0000               _TIM4_timer_init:
2475                     ; 28     TIM4_PSCR = 0x07;     // Prescaler = 128
2477  0000 35075347      	mov	_TIM4_PSCR,#7
2478                     ; 31   TIM4_ARR  = 125 - 1;  // Period = 125
2480  0004 357c5348      	mov	_TIM4_ARR,#124
2481                     ; 33   TIM4_IER  = 0x01;     // Enable TIM4 Update Interrupt
2483  0008 35015343      	mov	_TIM4_IER,#1
2484                     ; 36 }
2487  000c 81            	ret
2511                     ; 40 void 	TIM4_StartTimer(void)
2511                     ; 41 {
2512                     	switch	.text
2513  000d               _TIM4_StartTimer:
2517                     ; 42   TIM4_CR1  = 0x01;
2519  000d 35015340      	mov	_TIM4_CR1,#1
2520                     ; 43 }
2523  0011 81            	ret
2547                     ; 46 void 	TIM4_StopTimer(void)
2547                     ; 47 {
2548                     	switch	.text
2549  0012               _TIM4_StopTimer:
2553                     ; 48   TIM4_CR1  = 0x0;
2555  0012 725f5340      	clr	_TIM4_CR1
2556                     ; 49 }
2559  0016 81            	ret
2595                     ; 53 void 	TIM4_delay_ms(u32 ms)
2595                     ; 54 {
2596                     	switch	.text
2597  0017               _TIM4_delay_ms:
2599       00000000      OFST:	set	0
2602                     ; 55 	tim4_tick = 0;
2604  0017 ae0000        	ldw	x,#0
2605  001a bf02          	ldw	_tim4_tick+2,x
2606  001c ae0000        	ldw	x,#0
2607  001f bf00          	ldw	_tim4_tick,x
2608                     ; 57 	TIM4_CR1  = 0x01;     // Enable TIM4 counter
2610  0021 35015340      	mov	_TIM4_CR1,#1
2612  0025               L3461:
2613                     ; 58 	while( tim4_tick < ms){	};
2615  0025 ae0000        	ldw	x,#_tim4_tick
2616  0028 cd0000        	call	c_ltor
2618  002b 96            	ldw	x,sp
2619  002c 1c0003        	addw	x,#OFST+3
2620  002f cd0000        	call	c_lcmp
2622  0032 25f1          	jrult	L3461
2623                     ; 59 	TIM4_CR1  = 0x0;     // Disable TIM4 counter
2626  0034 725f5340      	clr	_TIM4_CR1
2627                     ; 60 }
2630  0038 81            	ret
2633                     	bsct
2634  0004               _led:
2635  0004 00            	dc.b	0
2659                     ; 68 @far @interrupt void TIM4_Timebase_Interrupt(void)
2659                     ; 69 {
2661                     	switch	.text
2662  0039               f_TIM4_Timebase_Interrupt:
2666                     ; 70 	tim4_tick++;
2668  0039 ae0000        	ldw	x,#_tim4_tick
2669  003c a601          	ld	a,#1
2670  003e cd0000        	call	c_lgadc
2672                     ; 71   TIM4_SR = 0x00;   //  Clear interrupt flag
2674  0041 725f5344      	clr	_TIM4_SR
2675                     ; 72 }
2678  0045 80            	iret
2722                     ; 81 u8 TIM4_GetTickCount(u8 Handle, u32 *Tick)
2722                     ; 82 {
2724                     	switch	.text
2725  0046               _TIM4_GetTickCount:
2727  0046 88            	push	a
2728       00000000      OFST:	set	0
2731                     ; 92   if (Tick == NULL)
2733  0047 1e04          	ldw	x,(OFST+4,sp)
2734  0049 2605          	jrne	L1071
2735                     ; 94     return(1);
2737  004b a601          	ld	a,#1
2740  004d 5b01          	addw	sp,#1
2741  004f 81            	ret
2742  0050               L1071:
2743                     ; 98   *Tick = tim4_tick;
2745  0050 1e04          	ldw	x,(OFST+4,sp)
2746  0052 b603          	ld	a,_tim4_tick+3
2747  0054 e703          	ld	(3,x),a
2748  0056 b602          	ld	a,_tim4_tick+2
2749  0058 e702          	ld	(2,x),a
2750  005a b601          	ld	a,_tim4_tick+1
2751  005c e701          	ld	(1,x),a
2752  005e b600          	ld	a,_tim4_tick
2753  0060 f7            	ld	(x),a
2754                     ; 100   return 0;  
2756  0061 4f            	clr	a
2759  0062 5b01          	addw	sp,#1
2760  0064 81            	ret
2804                     ; 104 u8 TIM4_SetTickCount(u8 Handle, u32 Tick)
2804                     ; 105 {
2805                     	switch	.text
2806  0065               _TIM4_SetTickCount:
2808  0065 88            	push	a
2809       00000000      OFST:	set	0
2812                     ; 115   tim4_tick = Tick;
2814  0066 1e06          	ldw	x,(OFST+6,sp)
2815  0068 bf02          	ldw	_tim4_tick+2,x
2816  006a 1e04          	ldw	x,(OFST+4,sp)
2817  006c bf00          	ldw	_tim4_tick,x
2818                     ; 116   return 0;
2820  006e 4f            	clr	a
2823  006f 5b01          	addw	sp,#1
2824  0071 81            	ret
2861                     ; 121 void sleep( u32 ms)
2861                     ; 122 {
2862                     	switch	.text
2863  0072               _sleep:
2865       00000000      OFST:	set	0
2868                     ; 123   TIM4_timer_init();
2870  0072 ad8c          	call	_TIM4_timer_init
2872                     ; 124   TIM4_delay_ms(ms);
2874  0074 1e05          	ldw	x,(OFST+5,sp)
2875  0076 89            	pushw	x
2876  0077 1e05          	ldw	x,(OFST+5,sp)
2877  0079 89            	pushw	x
2878  007a ad9b          	call	_TIM4_delay_ms
2880  007c 5b04          	addw	sp,#4
2881                     ; 125   TIM4_StopTimer();
2883  007e ad92          	call	_TIM4_StopTimer
2885                     ; 126 } 
2888  0080 81            	ret
2921                     	xdef	f_TIM4_Timebase_Interrupt
2922                     	xdef	_led
2923                     	xdef	_tim4_tick
2924                     	xdef	_sleep
2925                     	xdef	_TIM4_SetTickCount
2926                     	xdef	_TIM4_GetTickCount
2927                     	xdef	_TIM4_StartTimer
2928                     	xdef	_TIM4_StopTimer
2929                     	xdef	_TIM4_delay_ms
2930                     	xdef	_TIM4_timer_init
2949                     	xref	c_lgadc
2950                     	xref	c_lcmp
2951                     	xref	c_ltor
2952                     	end
