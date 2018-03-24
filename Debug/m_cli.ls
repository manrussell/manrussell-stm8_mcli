   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
2434                     	bsct
2435  0000               L5461_cmd_list:
2436  0000 016b          	dc.w	L7461
2437  0002 0161          	dc.w	L1561
2439  0004 016a          	dc.w	L1361_general_help_print
2440  0006 015f          	dc.w	L3561
2441  0008 0161          	dc.w	L1561
2443  000a 016a          	dc.w	L1361_general_help_print
2444  000c 015a          	dc.w	L5561
2445  000e 014c          	dc.w	L7561
2447  0010 0ac8          	dc.w	L5361_exit
2448  0012 0147          	dc.w	L1661
2449  0014 0130          	dc.w	L3661
2451  0016 011c          	dc.w	L7361_list
2452  0018 012c          	dc.w	L5661
2453  001a 012b          	dc.w	L7661
2455  001c 0175          	dc.w	L3361_print_help_for_registered_cmd
2456  001e 011f          	dc.w	L1761
2457  0020 0109          	dc.w	L3761
2459  0022 0ad9          	dc.w	L3461_example_func
2460  0024               L5761_ktable:
2461  0024 80            	dc.b	128
2462  0025 02            	dc.b	2
2463  0026 5b            	dc.b	91
2464  0027 41            	dc.b	65
2465  0028 00            	dc.b	0
2466  0029 00            	dc.b	0
2467  002a 00            	dc.b	0
2468  002b 00            	dc.b	0
2469  002c 00            	dc.b	0
2470  002d 00            	dc.b	0
2471  002e 81            	dc.b	129
2472  002f 02            	dc.b	2
2473  0030 5b            	dc.b	91
2474  0031 42            	dc.b	66
2475  0032 00            	dc.b	0
2476  0033 00            	dc.b	0
2477  0034 00            	dc.b	0
2478  0035 00            	dc.b	0
2479  0036 00            	dc.b	0
2480  0037 00            	dc.b	0
2481  0038 82            	dc.b	130
2482  0039 02            	dc.b	2
2483  003a 5b            	dc.b	91
2484  003b 43            	dc.b	67
2485  003c 00            	dc.b	0
2486  003d 00            	dc.b	0
2487  003e 00            	dc.b	0
2488  003f 00            	dc.b	0
2489  0040 00            	dc.b	0
2490  0041 00            	dc.b	0
2491  0042 83            	dc.b	131
2492  0043 02            	dc.b	2
2493  0044 5b            	dc.b	91
2494  0045 44            	dc.b	68
2495  0046 00            	dc.b	0
2496  0047 00            	dc.b	0
2497  0048 00            	dc.b	0
2498  0049 00            	dc.b	0
2499  004a 00            	dc.b	0
2500  004b 00            	dc.b	0
2501  004c 84            	dc.b	132
2502  004d 03            	dc.b	3
2503  004e 5b            	dc.b	91
2504  004f 31            	dc.b	49
2505  0050 7e            	dc.b	126
2506  0051 00            	dc.b	0
2507  0052 00            	dc.b	0
2508  0053 00            	dc.b	0
2509  0054 00            	dc.b	0
2510  0055 00            	dc.b	0
2511  0056 85            	dc.b	133
2512  0057 03            	dc.b	3
2513  0058 5b            	dc.b	91
2514  0059 32            	dc.b	50
2515  005a 7e            	dc.b	126
2516  005b 00            	dc.b	0
2517  005c 00            	dc.b	0
2518  005d 00            	dc.b	0
2519  005e 00            	dc.b	0
2520  005f 00            	dc.b	0
2521  0060 86            	dc.b	134
2522  0061 03            	dc.b	3
2523  0062 5b            	dc.b	91
2524  0063 33            	dc.b	51
2525  0064 7e            	dc.b	126
2526  0065 00            	dc.b	0
2527  0066 00            	dc.b	0
2528  0067 00            	dc.b	0
2529  0068 00            	dc.b	0
2530  0069 00            	dc.b	0
2531  006a 87            	dc.b	135
2532  006b 03            	dc.b	3
2533  006c 5b            	dc.b	91
2534  006d 34            	dc.b	52
2535  006e 7e            	dc.b	126
2536  006f 00            	dc.b	0
2537  0070 00            	dc.b	0
2538  0071 00            	dc.b	0
2539  0072 00            	dc.b	0
2540  0073 00            	dc.b	0
2541  0074 88            	dc.b	136
2542  0075 03            	dc.b	3
2543  0076 5b            	dc.b	91
2544  0077 35            	dc.b	53
2545  0078 7e            	dc.b	126
2546  0079 00            	dc.b	0
2547  007a 00            	dc.b	0
2548  007b 00            	dc.b	0
2549  007c 00            	dc.b	0
2550  007d 00            	dc.b	0
2551  007e 89            	dc.b	137
2552  007f 03            	dc.b	3
2553  0080 5b            	dc.b	91
2554  0081 36            	dc.b	54
2555  0082 7e            	dc.b	126
2556  0083 00            	dc.b	0
2557  0084 00            	dc.b	0
2558  0085 00            	dc.b	0
2559  0086 00            	dc.b	0
2560  0087 00            	dc.b	0
2561  0088 ff            	dc.b	255
2562  0089 00            	dc.b	0
2563  008a 00            	dc.b	0
2564  008b 00            	dc.b	0
2565  008c 00            	dc.b	0
2566  008d 00            	dc.b	0
2567  008e 00            	dc.b	0
2568  008f 00            	dc.b	0
2569  0090 00            	dc.b	0
2570  0091 00            	dc.b	0
2571  0092               L7761_mprintf_on:
2572  0092 00            	dc.b	0
2573  0093               L3071_cmd_histptr:
2574  0093 00000000      	dc.l	0
2575  0097               L5071_cmd_histptrMaxVal:
2576  0097 00000000      	dc.l	0
2577  009b               L7071_num_of_cmds_registered:
2578  009b 00000006      	dc.l	6
2579                     .const:	section	.text
2580  0000               L3171_usercmd:
2581  0000 00            	dc.b	0
2582  0001 000000000000  	ds.b	13
2656                     	switch	.const
2657  000e               L6:
2658  000e 00000009      	dc.l	9
2659                     ; 192 int32 m_cli (void)
2659                     ; 193 {
2660                     	scross	off
2661                     	switch	.text
2662  0000               _m_cli:
2664  0000 5210          	subw	sp,#16
2665       00000010      OFST:	set	16
2668                     ; 194 	char 		usercmd[MAX_TERMINAL_WIDTH] = { 0 }; /*! typed in by user */
2670  0002 96            	ldw	x,sp
2671  0003 1c0001        	addw	x,#OFST-15
2672  0006 90ae0000      	ldw	y,#L3171_usercmd
2673  000a a60e          	ld	a,#14
2674  000c cd0000        	call	c_xymvx
2676                     ; 195 	uint8 	bufidx = 0;   		/*! buffer index, cursor placement for usercmd. */
2678  000f 0f0f          	clr	(OFST-1,sp)
2680                     ; 200 	if(num_of_cmds_registered > MAX_REGISTERABLE_COMMANDS)
2682  0011 9c            	rvf
2683  0012 ae009b        	ldw	x,#L7071_num_of_cmds_registered
2684  0015 cd0000        	call	c_ltor
2686  0018 ae000e        	ldw	x,#L6
2687  001b cd0000        	call	c_lcmp
2689  001e 2f02          	jrslt	L1571
2690  0020               L3571:
2691                     ; 203     while (1);
2693  0020 20fe          	jra	L3571
2694  0022               L1571:
2695                     ; 206 	outstring( "\nWelcome\n" );
2697  0022 ae00ff        	ldw	x,#L7571
2698  0025 cd0000        	call	_outstring
2700                     ; 208 	memset ( usercmd, 0, MAX_TERMINAL_WIDTH );
2702  0028 ae000e        	ldw	x,#14
2703  002b 89            	pushw	x
2704  002c ae0000        	ldw	x,#0
2705  002f 89            	pushw	x
2706  0030 4b00          	push	#0
2707  0032 96            	ldw	x,sp
2708  0033 1c0006        	addw	x,#OFST-10
2709  0036 cd0000        	call	_memset
2711  0039 5b05          	addw	sp,#5
2712                     ; 209 	print_prompt();
2714  003b cd0312        	call	L3651_print_prompt
2716  003e               L1671:
2717                     ; 213 		if ( keypressed() )
2719  003e cd0b11        	call	L3751_keypressed
2721  0041 4d            	tnz	a
2722  0042 27fa          	jreq	L1671
2723                     ; 215 			c = read_keyboard();
2725  0044 cd01a8        	call	L1751_read_keyboard
2727  0047 6b10          	ld	(OFST+0,sp),a
2729                     ; 218 			if ( ( c == KEY_BSPACE )  || ( bufidx >= MAX_TERMINAL_WIDTH ) )
2731  0049 7b10          	ld	a,(OFST+0,sp)
2732  004b a17f          	cp	a,#127
2733  004d 2706          	jreq	L1771
2735  004f 7b0f          	ld	a,(OFST-1,sp)
2736  0051 a10e          	cp	a,#14
2737  0053 250f          	jrult	L7671
2738  0055               L1771:
2739                     ; 220 				back_space(&bufidx, usercmd );
2741  0055 96            	ldw	x,sp
2742  0056 1c0001        	addw	x,#OFST-15
2743  0059 89            	pushw	x
2744  005a 96            	ldw	x,sp
2745  005b 1c0011        	addw	x,#OFST+1
2746  005e cd0595        	call	L7161_back_space
2748  0061 85            	popw	x
2750  0062 20da          	jra	L1671
2751  0064               L7671:
2752                     ; 222 			else if ( c == KEY_RETURN )
2754  0064 7b10          	ld	a,(OFST+0,sp)
2755  0066 a10d          	cp	a,#13
2756  0068 260f          	jrne	L5771
2757                     ; 224 				do_command(&bufidx, usercmd );
2759  006a 96            	ldw	x,sp
2760  006b 1c0001        	addw	x,#OFST-15
2761  006e 89            	pushw	x
2762  006f 96            	ldw	x,sp
2763  0070 1c0011        	addw	x,#OFST+1
2764  0073 cd0741        	call	L3261_do_command
2766  0076 85            	popw	x
2768  0077 20c5          	jra	L1671
2769  0079               L5771:
2770                     ; 226 			else if ( ( c >= KEY_SPACE ) && ( c < 127 ) )
2772  0079 7b10          	ld	a,(OFST+0,sp)
2773  007b a120          	cp	a,#32
2774  007d 2519          	jrult	L1002
2776  007f 7b10          	ld	a,(OFST+0,sp)
2777  0081 a17f          	cp	a,#127
2778  0083 2413          	jruge	L1002
2779                     ; 228 				add_char(&bufidx, usercmd, c );
2781  0085 7b10          	ld	a,(OFST+0,sp)
2782  0087 88            	push	a
2783  0088 96            	ldw	x,sp
2784  0089 1c0002        	addw	x,#OFST-14
2785  008c 89            	pushw	x
2786  008d 96            	ldw	x,sp
2787  008e 1c0012        	addw	x,#OFST+2
2788  0091 cd0808        	call	L5261_add_char
2790  0094 5b03          	addw	sp,#3
2792  0096 20a6          	jra	L1671
2793  0098               L1002:
2794                     ; 231 			else if ( c == KEY_CRSR_UP )
2796  0098 7b10          	ld	a,(OFST+0,sp)
2797  009a a180          	cp	a,#128
2798  009c 260f          	jrne	L5002
2799                     ; 233 				cursor_up( &bufidx, usercmd );
2801  009e 96            	ldw	x,sp
2802  009f 1c0001        	addw	x,#OFST-15
2803  00a2 89            	pushw	x
2804  00a3 96            	ldw	x,sp
2805  00a4 1c0011        	addw	x,#OFST+1
2806  00a7 cd036f        	call	L3161_cursor_up
2808  00aa 85            	popw	x
2810  00ab 2091          	jra	L1671
2811  00ad               L5002:
2812                     ; 236 			else if ( c == KEY_CRSR_DOWN )
2814  00ad 7b10          	ld	a,(OFST+0,sp)
2815  00af a181          	cp	a,#129
2816  00b1 2610          	jrne	L1102
2817                     ; 238 				cursor_down( &bufidx, usercmd );
2819  00b3 96            	ldw	x,sp
2820  00b4 1c0001        	addw	x,#OFST-15
2821  00b7 89            	pushw	x
2822  00b8 96            	ldw	x,sp
2823  00b9 1c0011        	addw	x,#OFST+1
2824  00bc cd03df        	call	L5161_cursor_down
2826  00bf 85            	popw	x
2828  00c0 cc003e        	jra	L1671
2829  00c3               L1102:
2830                     ; 240 			else if ( c == KEY_CRSR_LEFT )
2832  00c3 7b10          	ld	a,(OFST+0,sp)
2833  00c5 a183          	cp	a,#131
2834  00c7 260b          	jrne	L5102
2835                     ; 242 				cursor_left( &bufidx );
2837  00c9 96            	ldw	x,sp
2838  00ca 1c000f        	addw	x,#OFST-1
2839  00cd cd035f        	call	L7061_cursor_left
2842  00d0 ac3e003e      	jpf	L1671
2843  00d4               L5102:
2844                     ; 244 			else if ( c == KEY_CRSR_RIGHT )
2846  00d4 7b10          	ld	a,(OFST+0,sp)
2847  00d6 a182          	cp	a,#130
2848  00d8 2611          	jrne	L1202
2849                     ; 246 				cursor_right( &bufidx, usercmd  );
2851  00da 96            	ldw	x,sp
2852  00db 1c0001        	addw	x,#OFST-15
2853  00de 89            	pushw	x
2854  00df 96            	ldw	x,sp
2855  00e0 1c0011        	addw	x,#OFST+1
2856  00e3 cd032a        	call	L1161_cursor_right
2858  00e6 85            	popw	x
2860  00e7 ac3e003e      	jpf	L1671
2861  00eb               L1202:
2862                     ; 248 			else if ( c == KEY_TAB )
2864  00eb 7b10          	ld	a,(OFST+0,sp)
2865  00ed a109          	cp	a,#9
2866  00ef 2611          	jrne	L5202
2867                     ; 250 				tab_search( &bufidx, usercmd );
2869  00f1 96            	ldw	x,sp
2870  00f2 1c0001        	addw	x,#OFST-15
2871  00f5 89            	pushw	x
2872  00f6 96            	ldw	x,sp
2873  00f7 1c0011        	addw	x,#OFST+1
2874  00fa cd089f        	call	L7261_tab_search
2876  00fd 85            	popw	x
2878  00fe ac3e003e      	jpf	L1671
2879  0102               L5202:
2880                     ; 252 			else if (c == KEY_DELETE)
2882  0102 7b10          	ld	a,(OFST+0,sp)
2883  0104 a186          	cp	a,#134
2884  0106 2703          	jreq	L01
2885  0108 cc003e        	jp	L1671
2886  010b               L01:
2887                     ; 254 				del_key(&bufidx, usercmd);
2889  010b 96            	ldw	x,sp
2890  010c 1c0001        	addw	x,#OFST-15
2891  010f 89            	pushw	x
2892  0110 96            	ldw	x,sp
2893  0111 1c0011        	addw	x,#OFST+1
2894  0114 cd0616        	call	L1261_del_key
2896  0117 85            	popw	x
2898  0118 ac3e003e      	jpf	L1671
2944                     ; 278 static int32	list (uint32 a, char ** b)
2944                     ; 279 {
2945                     	switch	.text
2946  011c               L7361_list:
2948  011c 88            	push	a
2949       00000001      OFST:	set	1
2952                     ; 280 	int8 i=0;
2954                     ; 282 	outstring("\nName\thelp");
2956  011d ae00f4        	ldw	x,#L7502
2957  0120 cd0000        	call	_outstring
2959                     ; 283 	outstring("\n");
2961  0123 ae00f2        	ldw	x,#L1602
2962  0126 cd0000        	call	_outstring
2964                     ; 285 	for(i=0; i<num_of_cmds_registered; i++)
2966  0129 0f01          	clr	(OFST+0,sp)
2969  012b 201e          	jra	L7602
2970  012d               L3602:
2971                     ; 289     	outstring("\n");
2973  012d ae00f2        	ldw	x,#L1602
2974  0130 cd0000        	call	_outstring
2976                     ; 290     	outstring( cmd_list[i].cmd_name );
2978  0133 7b01          	ld	a,(OFST+0,sp)
2979  0135 97            	ld	xl,a
2980  0136 a606          	ld	a,#6
2981  0138 42            	mul	x,a
2982  0139 ee00          	ldw	x,(L5461_cmd_list,x)
2983  013b cd0000        	call	_outstring
2985                     ; 291     	outstring( cmd_list[i].cmd_help );    
2987  013e 7b01          	ld	a,(OFST+0,sp)
2988  0140 97            	ld	xl,a
2989  0141 a606          	ld	a,#6
2990  0143 42            	mul	x,a
2991  0144 ee02          	ldw	x,(L5461_cmd_list+2,x)
2992  0146 cd0000        	call	_outstring
2994                     ; 285 	for(i=0; i<num_of_cmds_registered; i++)
2996  0149 0c01          	inc	(OFST+0,sp)
2998  014b               L7602:
3001  014b 9c            	rvf
3002  014c 7b01          	ld	a,(OFST+0,sp)
3003  014e b703          	ld	c_lreg+3,a
3004  0150 3f02          	clr	c_lreg+2
3005  0152 3f01          	clr	c_lreg+1
3006  0154 3f00          	clr	c_lreg
3007  0156 ae009b        	ldw	x,#L7071_num_of_cmds_registered
3008  0159 cd0000        	call	c_lcmp
3010  015c 2fcf          	jrslt	L3602
3011                     ; 294 	return 0;
3013  015e ae0000        	ldw	x,#0
3014  0161 bf02          	ldw	c_lreg+2,x
3015  0163 ae0000        	ldw	x,#0
3016  0166 bf00          	ldw	c_lreg,x
3019  0168 84            	pop	a
3020  0169 81            	ret
3054                     ; 309 static int32 	general_help_print(uint32 a, char ** b)
3054                     ; 310 {
3055                     	switch	.text
3056  016a               L1361_general_help_print:
3060                     ; 311   return 0;
3062  016a ae0000        	ldw	x,#0
3063  016d bf02          	ldw	c_lreg+2,x
3064  016f ae0000        	ldw	x,#0
3065  0172 bf00          	ldw	c_lreg,x
3068  0174 81            	ret
3126                     ; 347 static int32 	print_help_for_registered_cmd(uint32 a, char ** b)
3126                     ; 348 {
3127                     	switch	.text
3128  0175               L3361_print_help_for_registered_cmd:
3130  0175 5204          	subw	sp,#4
3131       00000004      OFST:	set	4
3134                     ; 349 	uint32 cmd_idx = 0;
3136                     ; 351 	cmd_idx = search_through_cmd_list( b[1] );
3138  0177 1e0b          	ldw	x,(OFST+7,sp)
3139  0179 ee02          	ldw	x,(2,x)
3140  017b cd02a3        	call	L7651_search_through_cmd_list
3142  017e 6b04          	ld	(OFST+0,sp),a
3143  0180 4f            	clr	a
3144  0181 6b03          	ld	(OFST-1,sp),a
3145  0183 6b02          	ld	(OFST-2,sp),a
3146  0185 6b01          	ld	(OFST-3,sp),a
3148                     ; 357 	outstring("\n");
3150  0187 ae00f2        	ldw	x,#L1602
3151  018a cd0000        	call	_outstring
3153                     ; 358   outstring(cmd_list[cmd_idx].cmd_help );
3155  018d 1e03          	ldw	x,(OFST-1,sp)
3156  018f 90ae0006      	ldw	y,#6
3157  0193 cd0000        	call	c_imul
3159  0196 ee02          	ldw	x,(L5461_cmd_list+2,x)
3160  0198 cd0000        	call	_outstring
3162                     ; 360 	return 0;
3164  019b ae0000        	ldw	x,#0
3165  019e bf02          	ldw	c_lreg+2,x
3166  01a0 ae0000        	ldw	x,#0
3167  01a3 bf00          	ldw	c_lreg,x
3170  01a5 5b04          	addw	sp,#4
3171  01a7 81            	ret
3239                     	switch	.const
3240  0012               L22:
3241  0012 00000008      	dc.l	8
3242                     ; 373 static uint8 read_keyboard(void)
3242                     ; 374 {
3243                     	switch	.text
3244  01a8               L1751_read_keyboard:
3246  01a8 5211          	subw	sp,#17
3247       00000011      OFST:	set	17
3250                     ; 381   c = uart_getchar();
3252  01aa cd0000        	call	_readchar
3254  01ad 6b05          	ld	(OFST-12,sp),a
3256                     ; 385   if (c != 27) return(c);
3258  01af 7b05          	ld	a,(OFST-12,sp)
3259  01b1 a11b          	cp	a,#27
3260  01b3 2704          	jreq	L1712
3263  01b5 7b05          	ld	a,(OFST-12,sp)
3265  01b7 2015          	jra	L62
3266  01b9               L1712:
3267                     ; 390 	sleep(15);
3269  01b9 ae000f        	ldw	x,#15
3270  01bc 89            	pushw	x
3271  01bd ae0000        	ldw	x,#0
3272  01c0 89            	pushw	x
3273  01c1 cd0000        	call	_sleep
3275  01c4 5b04          	addw	sp,#4
3276                     ; 391   if (!uart_ischar()) return(c);
3278  01c6 cd0000        	call	_ischar
3280  01c9 4d            	tnz	a
3281  01ca 2605          	jrne	L3712
3284  01cc 7b05          	ld	a,(OFST-12,sp)
3286  01ce               L62:
3288  01ce 5b11          	addw	sp,#17
3289  01d0 81            	ret
3290  01d1               L3712:
3291                     ; 403   memset(cmp, 0, sizeof(cmp));
3293  01d1 ae0008        	ldw	x,#8
3294  01d4 89            	pushw	x
3295  01d5 ae0000        	ldw	x,#0
3296  01d8 89            	pushw	x
3297  01d9 4b00          	push	#0
3298  01db 96            	ldw	x,sp
3299  01dc 1c000b        	addw	x,#OFST-6
3300  01df cd0000        	call	_memset
3302  01e2 5b05          	addw	sp,#5
3303                     ; 405   len = 0;
3305  01e4 ae0000        	ldw	x,#0
3306  01e7 1f10          	ldw	(OFST-1,sp),x
3307  01e9 ae0000        	ldw	x,#0
3308  01ec 1f0e          	ldw	(OFST-3,sp),x
3311  01ee 2057          	jra	L1022
3312  01f0               L5712:
3313                     ; 408     cmp[len++] = uart_getchar();
3315  01f0 96            	ldw	x,sp
3316  01f1 1c0006        	addw	x,#OFST-11
3317  01f4 bf02          	ldw	c_lreg+2,x
3318  01f6 5f            	clrw	x
3319  01f7 bf00          	ldw	c_lreg,x
3320  01f9 96            	ldw	x,sp
3321  01fa 1c0001        	addw	x,#OFST-16
3322  01fd cd0000        	call	c_rtol
3325  0200 96            	ldw	x,sp
3326  0201 1c000e        	addw	x,#OFST-3
3327  0204 cd0000        	call	c_ltor
3329  0207 96            	ldw	x,sp
3330  0208 1c000e        	addw	x,#OFST-3
3331  020b a601          	ld	a,#1
3332  020d cd0000        	call	c_lgadc
3335  0210 96            	ldw	x,sp
3336  0211 1c0001        	addw	x,#OFST-16
3337  0214 cd0000        	call	c_ladd
3339  0217 be02          	ldw	x,c_lreg+2
3340  0219 89            	pushw	x
3341  021a cd0000        	call	_readchar
3343  021d 85            	popw	x
3344  021e f7            	ld	(x),a
3345                     ; 409     if (len == 8) break;
3347  021f 96            	ldw	x,sp
3348  0220 1c000e        	addw	x,#OFST-3
3349  0223 cd0000        	call	c_ltor
3351  0226 ae0012        	ldw	x,#L22
3352  0229 cd0000        	call	c_lcmp
3354  022c 260c          	jrne	L5022
3356  022e               L3022:
3357                     ; 413   i = 0;
3359  022e ae0000        	ldw	x,#0
3360  0231 1f10          	ldw	(OFST-1,sp),x
3361  0233 ae0000        	ldw	x,#0
3362  0236 1f0e          	ldw	(OFST-3,sp),x
3365  0238 2055          	jra	L3122
3366  023a               L5022:
3367                     ; 410     sleep(20);
3369  023a ae0014        	ldw	x,#20
3370  023d 89            	pushw	x
3371  023e ae0000        	ldw	x,#0
3372  0241 89            	pushw	x
3373  0242 cd0000        	call	_sleep
3375  0245 5b04          	addw	sp,#4
3376  0247               L1022:
3377                     ; 406   while (uart_ischar())
3379  0247 cd0000        	call	_ischar
3381  024a 4d            	tnz	a
3382  024b 26a3          	jrne	L5712
3383  024d 20df          	jra	L3022
3384  024f               L7022:
3385                     ; 416     if (memcmp(&cmp, &ktable[i].cmparray, 8) == 0)
3387  024f ae0008        	ldw	x,#8
3388  0252 89            	pushw	x
3389  0253 ae0000        	ldw	x,#0
3390  0256 89            	pushw	x
3391  0257 1e14          	ldw	x,(OFST+3,sp)
3392  0259 90ae000a      	ldw	y,#10
3393  025d cd0000        	call	c_imul
3395  0260 01            	rrwa	x,a
3396  0261 ab26          	add	a,#L5761_ktable+2
3397  0263 2401          	jrnc	L42
3398  0265 5c            	incw	x
3399  0266               L42:
3400  0266 5f            	clrw	x
3401  0267 97            	ld	xl,a
3402  0268 89            	pushw	x
3403  0269 96            	ldw	x,sp
3404  026a 1c000c        	addw	x,#OFST-5
3405  026d cd0000        	call	_memcmp
3407  0270 5b06          	addw	sp,#6
3408  0272 cd0000        	call	c_lrzmp
3410  0275 260f          	jrne	L7122
3411                     ; 418       return(ktable[i].newcode);
3413  0277 1e10          	ldw	x,(OFST-1,sp)
3414  0279 90ae000a      	ldw	y,#10
3415  027d cd0000        	call	c_imul
3417  0280 e624          	ld	a,(L5761_ktable,x)
3419  0282 acce01ce      	jpf	L62
3420  0286               L7122:
3421                     ; 420     i++;
3423  0286 96            	ldw	x,sp
3424  0287 1c000e        	addw	x,#OFST-3
3425  028a a601          	ld	a,#1
3426  028c cd0000        	call	c_lgadc
3429  028f               L3122:
3430                     ; 414   while(ktable[i].newcode != 255)
3430                     ; 415   {
3430                     ; 416     if (memcmp(&cmp, &ktable[i].cmparray, 8) == 0)
3430                     ; 417     {
3430                     ; 418       return(ktable[i].newcode);
3430                     ; 419     }
3430                     ; 420     i++;
3432  028f 1e10          	ldw	x,(OFST-1,sp)
3433  0291 90ae000a      	ldw	y,#10
3434  0295 cd0000        	call	c_imul
3436  0298 e624          	ld	a,(L5761_ktable,x)
3437  029a a1ff          	cp	a,#255
3438  029c 26b1          	jrne	L7022
3439                     ; 425   return(0);
3441  029e 4f            	clr	a
3443  029f acce01ce      	jpf	L62
3519                     ; 440 static uint8 search_through_cmd_list( char *name)
3519                     ; 441 {
3520                     	switch	.text
3521  02a3               L7651_search_through_cmd_list:
3523  02a3 89            	pushw	x
3524  02a4 520a          	subw	sp,#10
3525       0000000a      OFST:	set	10
3528                     ; 442 	uint8 i = 0;
3530                     ; 443 	uint32 slen = 0; 			// string length of the registered command name
3532                     ; 444 	uint32 cmd_slen = 0; 	// string length of the user command
3534                     ; 445 	uint8 res = 0;
3536                     ; 447 	slen = strlen(name);
3538  02a6 cd0000        	call	_strlen
3540  02a9 96            	ldw	x,sp
3541  02aa 1c0001        	addw	x,#OFST-9
3542  02ad cd0000        	call	c_rtol
3545                     ; 449 	for( i=0; i<num_of_cmds_registered; i++)
3547  02b0 0f0a          	clr	(OFST+0,sp)
3550  02b2 2046          	jra	L3622
3551  02b4               L7522:
3552                     ; 451 		cmd_slen = strlen( cmd_list[i].cmd_name );
3554  02b4 7b0a          	ld	a,(OFST+0,sp)
3555  02b6 97            	ld	xl,a
3556  02b7 a606          	ld	a,#6
3557  02b9 42            	mul	x,a
3558  02ba ee00          	ldw	x,(L5461_cmd_list,x)
3559  02bc cd0000        	call	_strlen
3561  02bf 96            	ldw	x,sp
3562  02c0 1c0006        	addw	x,#OFST-4
3563  02c3 cd0000        	call	c_rtol
3566                     ; 454 		if( cmd_slen == slen)
3568  02c6 96            	ldw	x,sp
3569  02c7 1c0006        	addw	x,#OFST-4
3570  02ca cd0000        	call	c_ltor
3572  02cd 96            	ldw	x,sp
3573  02ce 1c0001        	addw	x,#OFST-9
3574  02d1 cd0000        	call	c_lcmp
3576  02d4 2622          	jrne	L7622
3577                     ; 456 			res = strncmp( cmd_list[i].cmd_name, name, cmd_slen);
3579  02d6 1e08          	ldw	x,(OFST-2,sp)
3580  02d8 89            	pushw	x
3581  02d9 1e08          	ldw	x,(OFST-2,sp)
3582  02db 89            	pushw	x
3583  02dc 1e0f          	ldw	x,(OFST+5,sp)
3584  02de 89            	pushw	x
3585  02df 7b10          	ld	a,(OFST+6,sp)
3586  02e1 97            	ld	xl,a
3587  02e2 a606          	ld	a,#6
3588  02e4 42            	mul	x,a
3589  02e5 ee00          	ldw	x,(L5461_cmd_list,x)
3590  02e7 cd0000        	call	_strncmp
3592  02ea 5b06          	addw	sp,#6
3593  02ec 01            	rrwa	x,a
3594  02ed 6b05          	ld	(OFST-5,sp),a
3595  02ef 02            	rlwa	x,a
3597                     ; 457 			if( res == 0)
3599  02f0 0d05          	tnz	(OFST-5,sp)
3600  02f2 2604          	jrne	L7622
3601                     ; 460 				return i;
3603  02f4 7b0a          	ld	a,(OFST+0,sp)
3605  02f6 2017          	jra	L23
3606  02f8               L7622:
3607                     ; 449 	for( i=0; i<num_of_cmds_registered; i++)
3609  02f8 0c0a          	inc	(OFST+0,sp)
3611  02fa               L3622:
3614  02fa 9c            	rvf
3615  02fb 7b0a          	ld	a,(OFST+0,sp)
3616  02fd b703          	ld	c_lreg+3,a
3617  02ff 3f02          	clr	c_lreg+2
3618  0301 3f01          	clr	c_lreg+1
3619  0303 3f00          	clr	c_lreg
3620  0305 ae009b        	ldw	x,#L7071_num_of_cmds_registered
3621  0308 cd0000        	call	c_lcmp
3623  030b 2fa7          	jrslt	L7522
3624                     ; 466 	return -1;
3626  030d a6ff          	ld	a,#255
3628  030f               L23:
3630  030f 5b0c          	addw	sp,#12
3631  0311 81            	ret
3656                     ; 476 static void print_prompt( void )
3656                     ; 477 {
3657                     	switch	.text
3658  0312               L3651_print_prompt:
3662                     ; 478 	outstring("\r");
3664  0312 ae00f0        	ldw	x,#L3032
3665  0315 cd0000        	call	_outstring
3667                     ; 481   outchar(0x1b);
3669  0318 a61b          	ld	a,#27
3670  031a cd0000        	call	_outchar
3672                     ; 482   outstring("[2K");
3674  031d ae00ec        	ldw	x,#L5032
3675  0320 cd0000        	call	_outstring
3677                     ; 488     outstring (PROMPT);
3679  0323 ae00e9        	ldw	x,#L7032
3680  0326 cd0000        	call	_outstring
3682                     ; 490 }
3685  0329 81            	ret
3742                     ; 503 static void cursor_right( uint8 	*bufidx, char *usercmd  )
3742                     ; 504 {
3743                     	switch	.text
3744  032a               L1161_cursor_right:
3746  032a 89            	pushw	x
3747  032b 5204          	subw	sp,#4
3748       00000004      OFST:	set	4
3751                     ; 507 	len = strlen ( usercmd );
3753  032d 1e09          	ldw	x,(OFST+5,sp)
3754  032f cd0000        	call	_strlen
3756  0332 96            	ldw	x,sp
3757  0333 1c0001        	addw	x,#OFST-3
3758  0336 cd0000        	call	c_rtol
3761                     ; 510 	if ( *bufidx < len )
3763  0339 9c            	rvf
3764  033a 1e05          	ldw	x,(OFST+1,sp)
3765  033c f6            	ld	a,(x)
3766  033d b703          	ld	c_lreg+3,a
3767  033f 3f02          	clr	c_lreg+2
3768  0341 3f01          	clr	c_lreg+1
3769  0343 3f00          	clr	c_lreg
3770  0345 96            	ldw	x,sp
3771  0346 1c0001        	addw	x,#OFST-3
3772  0349 cd0000        	call	c_lcmp
3774  034c 2e0e          	jrsge	L7332
3775                     ; 513 		(*bufidx)++;
3777  034e 1e05          	ldw	x,(OFST+1,sp)
3778  0350 7c            	inc	(x)
3779                     ; 519       outchar(0x1b);
3781  0351 a61b          	ld	a,#27
3782  0353 cd0000        	call	_outchar
3784                     ; 520       outstring("[1C");
3786  0356 ae00e5        	ldw	x,#L1432
3787  0359 cd0000        	call	_outstring
3789  035c               L7332:
3790                     ; 523 }
3793  035c 5b06          	addw	sp,#6
3794  035e 81            	ret
3831                     ; 534 static void cursor_left( uint8 *bufidx )
3831                     ; 535 {
3832                     	switch	.text
3833  035f               L7061_cursor_left:
3837                     ; 539 	if ( *bufidx > 0 )
3839  035f 7d            	tnz	(x)
3840  0360 270c          	jreq	L1632
3841                     ; 542 		(*bufidx)--;
3843  0362 7a            	dec	(x)
3844                     ; 548       outchar(0x1b);
3846  0363 a61b          	ld	a,#27
3847  0365 cd0000        	call	_outchar
3849                     ; 549       outstring("[1D");
3851  0368 ae00e1        	ldw	x,#L3632
3852  036b cd0000        	call	_outstring
3854  036e               L1632:
3855                     ; 552 }
3858  036e 81            	ret
3911                     ; 565 static void 	cursor_up( uint8 *bufidx, char *usercmd )
3911                     ; 566 {
3912                     	switch	.text
3913  036f               L3161_cursor_up:
3915  036f 89            	pushw	x
3916       00000000      OFST:	set	0
3919                     ; 568 	if ( cmd_histptr > 0 )
3921  0370 9c            	rvf
3922  0371 ae0093        	ldw	x,#L3071_cmd_histptr
3923  0374 cd0000        	call	c_lzmp
3925  0377 2d08          	jrsle	L7042
3926                     ; 570 		cmd_histptr--;
3928  0379 ae0093        	ldw	x,#L3071_cmd_histptr
3929  037c a601          	ld	a,#1
3930  037e cd0000        	call	c_lgsbc
3932  0381               L7042:
3933                     ; 574 	if ( cmd_histptr == cmd_histptrMaxVal )
3935  0381 ae0093        	ldw	x,#L3071_cmd_histptr
3936  0384 cd0000        	call	c_ltor
3938  0387 ae0097        	ldw	x,#L5071_cmd_histptrMaxVal
3939  038a cd0000        	call	c_lcmp
3941  038d 2604          	jrne	L1142
3942                     ; 576 		print_prompt();
3944  038f ad81          	call	L3651_print_prompt
3946                     ; 577 		return;
3948  0391 204a          	jra	L05
3949  0393               L1142:
3950                     ; 581 	memset ( usercmd, 0, MAX_TERMINAL_WIDTH );
3952  0393 ae000e        	ldw	x,#14
3953  0396 89            	pushw	x
3954  0397 ae0000        	ldw	x,#0
3955  039a 89            	pushw	x
3956  039b 4b00          	push	#0
3957  039d 1e0a          	ldw	x,(OFST+10,sp)
3958  039f cd0000        	call	_memset
3960  03a2 5b05          	addw	sp,#5
3961                     ; 582 	strcpy ( usercmd, cmd_history[cmd_histptr] );
3963  03a4 be95          	ldw	x,L3071_cmd_histptr+2
3964  03a6 90ae000e      	ldw	y,#14
3965  03aa cd0000        	call	c_imul
3967  03ad 01            	rrwa	x,a
3968  03ae ab1c          	add	a,#L1071_cmd_history
3969  03b0 2401          	jrnc	L44
3970  03b2 5c            	incw	x
3971  03b3               L44:
3972  03b3 5f            	clrw	x
3973  03b4 97            	ld	xl,a
3974  03b5 89            	pushw	x
3975  03b6 1e07          	ldw	x,(OFST+7,sp)
3976  03b8 cd0000        	call	_strcpy
3978  03bb 85            	popw	x
3979                     ; 585 	print_prompt();
3981  03bc cd0312        	call	L3651_print_prompt
3983                     ; 591     outstring (cmd_history[cmd_histptr] );
3985  03bf be95          	ldw	x,L3071_cmd_histptr+2
3986  03c1 90ae000e      	ldw	y,#14
3987  03c5 cd0000        	call	c_imul
3989  03c8 01            	rrwa	x,a
3990  03c9 ab1c          	add	a,#L1071_cmd_history
3991  03cb 2401          	jrnc	L64
3992  03cd 5c            	incw	x
3993  03ce               L64:
3994  03ce 5f            	clrw	x
3995  03cf 97            	ld	xl,a
3996  03d0 cd0000        	call	_outstring
3998                     ; 595 	*bufidx = strlen ( usercmd );
4000  03d3 1e05          	ldw	x,(OFST+5,sp)
4001  03d5 cd0000        	call	_strlen
4003  03d8 1e01          	ldw	x,(OFST+1,sp)
4004  03da b603          	ld	a,c_lreg+3
4005  03dc f7            	ld	(x),a
4006                     ; 596 }
4007  03dd               L05:
4010  03dd 85            	popw	x
4011  03de 81            	ret
4064                     ; 609 static void 	cursor_down( uint8 *bufidx, char *usercmd )
4064                     ; 610 {
4065                     	switch	.text
4066  03df               L5161_cursor_down:
4068  03df 89            	pushw	x
4069       00000000      OFST:	set	0
4072                     ; 612 	if ( cmd_histptr >= cmd_histptrMaxVal )
4074  03e0 9c            	rvf
4075  03e1 ae0093        	ldw	x,#L3071_cmd_histptr
4076  03e4 cd0000        	call	c_ltor
4078  03e7 ae0097        	ldw	x,#L5071_cmd_histptrMaxVal
4079  03ea cd0000        	call	c_lcmp
4081  03ed 2f1a          	jrslt	L5342
4082                     ; 614 		memset ( usercmd, 0, MAX_TERMINAL_WIDTH );
4084  03ef ae000e        	ldw	x,#14
4085  03f2 89            	pushw	x
4086  03f3 ae0000        	ldw	x,#0
4087  03f6 89            	pushw	x
4088  03f7 4b00          	push	#0
4089  03f9 1e0a          	ldw	x,(OFST+10,sp)
4090  03fb cd0000        	call	_memset
4092  03fe 5b05          	addw	sp,#5
4093                     ; 615 		print_prompt();
4095  0400 cd0312        	call	L3651_print_prompt
4097                     ; 616 		*bufidx=0;
4099  0403 1e01          	ldw	x,(OFST+1,sp)
4100  0405 7f            	clr	(x)
4102  0406 cc048f        	jra	L7342
4103  0409               L5342:
4104                     ; 618 	else if ( cmd_histptr == cmd_histptrMaxVal-1 )
4106  0409 ae0097        	ldw	x,#L5071_cmd_histptrMaxVal
4107  040c cd0000        	call	c_ltor
4109  040f a601          	ld	a,#1
4110  0411 cd0000        	call	c_lsbc
4112  0414 ae0093        	ldw	x,#L3071_cmd_histptr
4113  0417 cd0000        	call	c_lcmp
4115  041a 2621          	jrne	L1442
4116                     ; 620 		cmd_histptr++;
4118  041c ae0093        	ldw	x,#L3071_cmd_histptr
4119  041f a601          	ld	a,#1
4120  0421 cd0000        	call	c_lgadc
4122                     ; 621 		memset ( usercmd, 0, MAX_TERMINAL_WIDTH );
4124  0424 ae000e        	ldw	x,#14
4125  0427 89            	pushw	x
4126  0428 ae0000        	ldw	x,#0
4127  042b 89            	pushw	x
4128  042c 4b00          	push	#0
4129  042e 1e0a          	ldw	x,(OFST+10,sp)
4130  0430 cd0000        	call	_memset
4132  0433 5b05          	addw	sp,#5
4133                     ; 622 		print_prompt();
4135  0435 cd0312        	call	L3651_print_prompt
4137                     ; 623 		*bufidx=0;
4139  0438 1e01          	ldw	x,(OFST+1,sp)
4140  043a 7f            	clr	(x)
4142  043b 2052          	jra	L7342
4143  043d               L1442:
4144                     ; 628 		cmd_histptr++;
4146  043d ae0093        	ldw	x,#L3071_cmd_histptr
4147  0440 a601          	ld	a,#1
4148  0442 cd0000        	call	c_lgadc
4150                     ; 629 		memset ( usercmd, 0, MAX_TERMINAL_WIDTH );
4152  0445 ae000e        	ldw	x,#14
4153  0448 89            	pushw	x
4154  0449 ae0000        	ldw	x,#0
4155  044c 89            	pushw	x
4156  044d 4b00          	push	#0
4157  044f 1e0a          	ldw	x,(OFST+10,sp)
4158  0451 cd0000        	call	_memset
4160  0454 5b05          	addw	sp,#5
4161                     ; 631 		print_prompt();
4163  0456 cd0312        	call	L3651_print_prompt
4165                     ; 635       outstring (cmd_history[cmd_histptr] );
4167  0459 be95          	ldw	x,L3071_cmd_histptr+2
4168  045b 90ae000e      	ldw	y,#14
4169  045f cd0000        	call	c_imul
4171  0462 01            	rrwa	x,a
4172  0463 ab1c          	add	a,#L1071_cmd_history
4173  0465 2401          	jrnc	L45
4174  0467 5c            	incw	x
4175  0468               L45:
4176  0468 5f            	clrw	x
4177  0469 97            	ld	xl,a
4178  046a cd0000        	call	_outstring
4180                     ; 639 		strcpy ( usercmd, cmd_history[cmd_histptr] );
4182  046d be95          	ldw	x,L3071_cmd_histptr+2
4183  046f 90ae000e      	ldw	y,#14
4184  0473 cd0000        	call	c_imul
4186  0476 01            	rrwa	x,a
4187  0477 ab1c          	add	a,#L1071_cmd_history
4188  0479 2401          	jrnc	L65
4189  047b 5c            	incw	x
4190  047c               L65:
4191  047c 5f            	clrw	x
4192  047d 97            	ld	xl,a
4193  047e 89            	pushw	x
4194  047f 1e07          	ldw	x,(OFST+7,sp)
4195  0481 cd0000        	call	_strcpy
4197  0484 85            	popw	x
4198                     ; 642 		*bufidx = strlen ( usercmd );
4200  0485 1e05          	ldw	x,(OFST+5,sp)
4201  0487 cd0000        	call	_strlen
4203  048a 1e01          	ldw	x,(OFST+1,sp)
4204  048c b603          	ld	a,c_lreg+3
4205  048e f7            	ld	(x),a
4206  048f               L7342:
4207                     ; 645 }
4210  048f 85            	popw	x
4211  0490 81            	ret
4272                     	switch	.const
4273  0016               L26:
4274  0016 00000001      	dc.l	1
4275                     ; 656 static	void	add_to_history(uint8 *bufidx, char *usercmd)
4275                     ; 657 {	
4276                     	switch	.text
4277  0491               L5751_add_to_history:
4279  0491 89            	pushw	x
4280  0492 5204          	subw	sp,#4
4281       00000004      OFST:	set	4
4284                     ; 658 	uint32 res = 0;
4286                     ; 660  	res = check_if_blank_string( bufidx, usercmd);
4288  0494 1e09          	ldw	x,(OFST+5,sp)
4289  0496 89            	pushw	x
4290  0497 1e07          	ldw	x,(OFST+3,sp)
4291  0499 cd09f6        	call	L1061_check_if_blank_string
4293  049c 85            	popw	x
4294  049d 6b04          	ld	(OFST+0,sp),a
4295  049f 4f            	clr	a
4296  04a0 6b03          	ld	(OFST-1,sp),a
4297  04a2 6b02          	ld	(OFST-2,sp),a
4298  04a4 6b01          	ld	(OFST-3,sp),a
4300                     ; 661 	if( res == 1)
4302  04a6 96            	ldw	x,sp
4303  04a7 1c0001        	addw	x,#OFST-3
4304  04aa cd0000        	call	c_ltor
4306  04ad ae0016        	ldw	x,#L26
4307  04b0 cd0000        	call	c_lcmp
4309  04b3 2603          	jrne	L47
4310  04b5 cc0592        	jp	L27
4311  04b8               L47:
4312                     ; 663 		return;
4314                     ; 666 	remove_whitespace_tail( bufidx, usercmd);
4316  04b8 1e09          	ldw	x,(OFST+5,sp)
4317  04ba 89            	pushw	x
4318  04bb 1e07          	ldw	x,(OFST+3,sp)
4319  04bd cd0a28        	call	L5061_remove_whitespace_tail
4321  04c0 85            	popw	x
4322                     ; 669 	if( cmd_histptr == cmd_histptrMaxVal)
4324  04c1 ae0093        	ldw	x,#L3071_cmd_histptr
4325  04c4 cd0000        	call	c_ltor
4327  04c7 ae0097        	ldw	x,#L5071_cmd_histptrMaxVal
4328  04ca cd0000        	call	c_lcmp
4330  04cd 262b          	jrne	L5742
4331                     ; 672 		strcpy ( &cmd_history[cmd_histptrMaxVal][0], usercmd );
4333  04cf 1e09          	ldw	x,(OFST+5,sp)
4334  04d1 89            	pushw	x
4335  04d2 be99          	ldw	x,L5071_cmd_histptrMaxVal+2
4336  04d4 90ae000e      	ldw	y,#14
4337  04d8 cd0000        	call	c_imul
4339  04db 01            	rrwa	x,a
4340  04dc ab1c          	add	a,#L1071_cmd_history
4341  04de 2401          	jrnc	L46
4342  04e0 5c            	incw	x
4343  04e1               L46:
4344  04e1 5f            	clrw	x
4345  04e2 97            	ld	xl,a
4346  04e3 cd0000        	call	_strcpy
4348  04e6 85            	popw	x
4349                     ; 673 		cmd_histptrMaxVal++;
4351  04e7 ae0097        	ldw	x,#L5071_cmd_histptrMaxVal
4352  04ea a601          	ld	a,#1
4353  04ec cd0000        	call	c_lgadc
4355                     ; 674 		cmd_histptr++;
4357  04ef ae0093        	ldw	x,#L3071_cmd_histptr
4358  04f2 a601          	ld	a,#1
4359  04f4 cd0000        	call	c_lgadc
4362  04f7 cc057a        	jra	L7742
4363  04fa               L5742:
4364                     ; 677 	else if(cmd_histptr < cmd_histptrMaxVal)
4366  04fa 9c            	rvf
4367  04fb ae0093        	ldw	x,#L3071_cmd_histptr
4368  04fe cd0000        	call	c_ltor
4370  0501 ae0097        	ldw	x,#L5071_cmd_histptrMaxVal
4371  0504 cd0000        	call	c_lcmp
4373  0507 2e2a          	jrsge	L1052
4374                     ; 679 		strcpy ( &cmd_history[cmd_histptrMaxVal][0], usercmd );
4376  0509 1e09          	ldw	x,(OFST+5,sp)
4377  050b 89            	pushw	x
4378  050c be99          	ldw	x,L5071_cmd_histptrMaxVal+2
4379  050e 90ae000e      	ldw	y,#14
4380  0512 cd0000        	call	c_imul
4382  0515 01            	rrwa	x,a
4383  0516 ab1c          	add	a,#L1071_cmd_history
4384  0518 2401          	jrnc	L66
4385  051a 5c            	incw	x
4386  051b               L66:
4387  051b 5f            	clrw	x
4388  051c 97            	ld	xl,a
4389  051d cd0000        	call	_strcpy
4391  0520 85            	popw	x
4392                     ; 680 		cmd_histptrMaxVal++;
4394  0521 ae0097        	ldw	x,#L5071_cmd_histptrMaxVal
4395  0524 a601          	ld	a,#1
4396  0526 cd0000        	call	c_lgadc
4398                     ; 681 		cmd_histptr = cmd_histptrMaxVal;
4400  0529 be99          	ldw	x,L5071_cmd_histptrMaxVal+2
4401  052b bf95          	ldw	L3071_cmd_histptr+2,x
4402  052d be97          	ldw	x,L5071_cmd_histptrMaxVal
4403  052f bf93          	ldw	L3071_cmd_histptr,x
4405  0531 2047          	jra	L7742
4406  0533               L1052:
4407                     ; 684 	else if(cmd_histptr > cmd_histptrMaxVal)
4409  0533 9c            	rvf
4410  0534 ae0093        	ldw	x,#L3071_cmd_histptr
4411  0537 cd0000        	call	c_ltor
4413  053a ae0097        	ldw	x,#L5071_cmd_histptrMaxVal
4414  053d cd0000        	call	c_lcmp
4416  0540 2d32          	jrsle	L5052
4417                     ; 686 		cmd_histptrMaxVal = cmd_histptr;
4419  0542 be95          	ldw	x,L3071_cmd_histptr+2
4420  0544 bf99          	ldw	L5071_cmd_histptrMaxVal+2,x
4421  0546 be93          	ldw	x,L3071_cmd_histptr
4422  0548 bf97          	ldw	L5071_cmd_histptrMaxVal,x
4423                     ; 687 		strcpy ( &cmd_history[cmd_histptrMaxVal][0], usercmd );
4425  054a 1e09          	ldw	x,(OFST+5,sp)
4426  054c 89            	pushw	x
4427  054d be99          	ldw	x,L5071_cmd_histptrMaxVal+2
4428  054f 90ae000e      	ldw	y,#14
4429  0553 cd0000        	call	c_imul
4431  0556 01            	rrwa	x,a
4432  0557 ab1c          	add	a,#L1071_cmd_history
4433  0559 2401          	jrnc	L07
4434  055b 5c            	incw	x
4435  055c               L07:
4436  055c 5f            	clrw	x
4437  055d 97            	ld	xl,a
4438  055e cd0000        	call	_strcpy
4440  0561 85            	popw	x
4441                     ; 688 		cmd_histptrMaxVal++;
4443  0562 ae0097        	ldw	x,#L5071_cmd_histptrMaxVal
4444  0565 a601          	ld	a,#1
4445  0567 cd0000        	call	c_lgadc
4447                     ; 689 		cmd_histptr++;
4449  056a ae0093        	ldw	x,#L3071_cmd_histptr
4450  056d a601          	ld	a,#1
4451  056f cd0000        	call	c_lgadc
4454  0572 2006          	jra	L7742
4455  0574               L5052:
4456                     ; 693 		outstring("\n could not add to history");
4458  0574 ae00c6        	ldw	x,#L1152
4459  0577 cd0000        	call	_outstring
4461  057a               L7742:
4462                     ; 697 	cmd_histptr &= HISTORY_BUFFER_SIZE;
4464  057a b696          	ld	a,L3071_cmd_histptr+3
4465  057c a402          	and	a,#2
4466  057e b796          	ld	L3071_cmd_histptr+3,a
4467  0580 3f95          	clr	L3071_cmd_histptr+2
4468  0582 3f94          	clr	L3071_cmd_histptr+1
4469  0584 3f93          	clr	L3071_cmd_histptr
4470                     ; 698 	cmd_histptrMaxVal &= HISTORY_BUFFER_SIZE;
4472  0586 b69a          	ld	a,L5071_cmd_histptrMaxVal+3
4473  0588 a402          	and	a,#2
4474  058a b79a          	ld	L5071_cmd_histptrMaxVal+3,a
4475  058c 3f99          	clr	L5071_cmd_histptrMaxVal+2
4476  058e 3f98          	clr	L5071_cmd_histptrMaxVal+1
4477  0590 3f97          	clr	L5071_cmd_histptrMaxVal
4478                     ; 699 }
4479  0592               L27:
4482  0592 5b06          	addw	sp,#6
4483  0594 81            	ret
4543                     ; 711 static void back_space( uint8 *bufidx, char *usercmd )
4543                     ; 712 {
4544                     	switch	.text
4545  0595               L7161_back_space:
4547  0595 89            	pushw	x
4548  0596 5208          	subw	sp,#8
4549       00000008      OFST:	set	8
4552                     ; 716 	if ( *bufidx > 0 )
4554  0598 7d            	tnz	(x)
4555  0599 2602          	jrne	L001
4556  059b 2076          	jp	L1452
4557  059d               L001:
4558                     ; 718 		len = strlen ( usercmd );
4560  059d 1e0d          	ldw	x,(OFST+5,sp)
4561  059f cd0000        	call	_strlen
4563  05a2 96            	ldw	x,sp
4564  05a3 1c0005        	addw	x,#OFST-3
4565  05a6 cd0000        	call	c_rtol
4568                     ; 721 		memcpy ( &usercmd[*bufidx - 1], &usercmd[*bufidx], len - *bufidx + 1 );
4570  05a9 1e09          	ldw	x,(OFST+1,sp)
4571  05ab f6            	ld	a,(x)
4572  05ac b703          	ld	c_lreg+3,a
4573  05ae 3f02          	clr	c_lreg+2
4574  05b0 3f01          	clr	c_lreg+1
4575  05b2 3f00          	clr	c_lreg
4576  05b4 96            	ldw	x,sp
4577  05b5 1c0001        	addw	x,#OFST-7
4578  05b8 cd0000        	call	c_rtol
4581  05bb 96            	ldw	x,sp
4582  05bc 1c0005        	addw	x,#OFST-3
4583  05bf cd0000        	call	c_ltor
4585  05c2 96            	ldw	x,sp
4586  05c3 1c0001        	addw	x,#OFST-7
4587  05c6 cd0000        	call	c_lsub
4589  05c9 a601          	ld	a,#1
4590  05cb cd0000        	call	c_ladc
4592  05ce be02          	ldw	x,c_lreg+2
4593  05d0 89            	pushw	x
4594  05d1 be00          	ldw	x,c_lreg
4595  05d3 89            	pushw	x
4596  05d4 1e0d          	ldw	x,(OFST+5,sp)
4597  05d6 f6            	ld	a,(x)
4598  05d7 5f            	clrw	x
4599  05d8 97            	ld	xl,a
4600  05d9 72fb11        	addw	x,(OFST+9,sp)
4601  05dc 89            	pushw	x
4602  05dd 1e0f          	ldw	x,(OFST+7,sp)
4603  05df f6            	ld	a,(x)
4604  05e0 5f            	clrw	x
4605  05e1 97            	ld	xl,a
4606  05e2 5a            	decw	x
4607  05e3 72fb13        	addw	x,(OFST+11,sp)
4608  05e6 cd0000        	call	_memcpy
4610  05e9 5b06          	addw	sp,#6
4611                     ; 724 		print_prompt();
4613  05eb cd0312        	call	L3651_print_prompt
4615                     ; 728       outstring (usercmd );
4617  05ee 1e0d          	ldw	x,(OFST+5,sp)
4618  05f0 cd0000        	call	_outstring
4620                     ; 732 		(*bufidx)--;
4622  05f3 1e09          	ldw	x,(OFST+1,sp)
4623  05f5 7a            	dec	(x)
4624                     ; 734 		outstring("\r");
4626  05f6 ae00f0        	ldw	x,#L3032
4627  05f9 cd0000        	call	_outstring
4629                     ; 738       outchar(0x1b );
4631  05fc a61b          	ld	a,#27
4632  05fe cd0000        	call	_outchar
4634                     ; 739       outchar('[');
4636  0601 a65b          	ld	a,#91
4637  0603 cd0000        	call	_outchar
4639                     ; 740       outhex8( (*bufidx + PROMPT_SIZE) ); // mkr string
4641  0606 1e09          	ldw	x,(OFST+1,sp)
4642  0608 f6            	ld	a,(x)
4643  0609 ab02          	add	a,#2
4644  060b cd0000        	call	_outhex8
4646                     ; 741       outchar('C');
4648  060e a643          	ld	a,#67
4649  0610 cd0000        	call	_outchar
4651  0613               L1452:
4652                     ; 745 }
4655  0613 5b0a          	addw	sp,#10
4656  0615 81            	ret
4716                     ; 758 static void del_key( uint8 *bufidx, char *usercmd )
4716                     ; 759 {
4717                     	switch	.text
4718  0616               L1261_del_key:
4720  0616 89            	pushw	x
4721  0617 5208          	subw	sp,#8
4722       00000008      OFST:	set	8
4725                     ; 762 	len = strlen ( usercmd );
4727  0619 1e0d          	ldw	x,(OFST+5,sp)
4728  061b cd0000        	call	_strlen
4730  061e 96            	ldw	x,sp
4731  061f 1c0005        	addw	x,#OFST-3
4732  0622 cd0000        	call	c_rtol
4735                     ; 765 	memcpy ( &usercmd[*bufidx], &usercmd[*bufidx + 1], len - *bufidx );
4737  0625 1e09          	ldw	x,(OFST+1,sp)
4738  0627 f6            	ld	a,(x)
4739  0628 b703          	ld	c_lreg+3,a
4740  062a 3f02          	clr	c_lreg+2
4741  062c 3f01          	clr	c_lreg+1
4742  062e 3f00          	clr	c_lreg
4743  0630 96            	ldw	x,sp
4744  0631 1c0001        	addw	x,#OFST-7
4745  0634 cd0000        	call	c_rtol
4748  0637 96            	ldw	x,sp
4749  0638 1c0005        	addw	x,#OFST-3
4750  063b cd0000        	call	c_ltor
4752  063e 96            	ldw	x,sp
4753  063f 1c0001        	addw	x,#OFST-7
4754  0642 cd0000        	call	c_lsub
4756  0645 be02          	ldw	x,c_lreg+2
4757  0647 89            	pushw	x
4758  0648 be00          	ldw	x,c_lreg
4759  064a 89            	pushw	x
4760  064b 1e0d          	ldw	x,(OFST+5,sp)
4761  064d f6            	ld	a,(x)
4762  064e 5f            	clrw	x
4763  064f 97            	ld	xl,a
4764  0650 72fb11        	addw	x,(OFST+9,sp)
4765  0653 5c            	incw	x
4766  0654 89            	pushw	x
4767  0655 1e0f          	ldw	x,(OFST+7,sp)
4768  0657 f6            	ld	a,(x)
4769  0658 5f            	clrw	x
4770  0659 97            	ld	xl,a
4771  065a 72fb13        	addw	x,(OFST+11,sp)
4772  065d cd0000        	call	_memcpy
4774  0660 5b06          	addw	sp,#6
4775                     ; 768 	print_prompt();
4777  0662 cd0312        	call	L3651_print_prompt
4779                     ; 772     outstring (usercmd );
4781  0665 1e0d          	ldw	x,(OFST+5,sp)
4782  0667 cd0000        	call	_outstring
4784                     ; 776 	outstring("\r");
4786  066a ae00f0        	ldw	x,#L3032
4787  066d cd0000        	call	_outstring
4789                     ; 780     outchar (0x1b );
4791  0670 a61b          	ld	a,#27
4792  0672 cd0000        	call	_outchar
4794                     ; 781     outchar('[');
4796  0675 a65b          	ld	a,#91
4797  0677 cd0000        	call	_outchar
4799                     ; 782     outhex8( (*bufidx + PROMPT_SIZE) );
4801  067a 1e09          	ldw	x,(OFST+1,sp)
4802  067c f6            	ld	a,(x)
4803  067d ab02          	add	a,#2
4804  067f cd0000        	call	_outhex8
4806                     ; 783     outchar('C');
4808  0682 a643          	ld	a,#67
4809  0684 cd0000        	call	_outchar
4811                     ; 786 }
4814  0687 5b0a          	addw	sp,#10
4815  0689 81            	ret
4900                     ; 800 static void parse_cmd_line( uint8 *bufidx, char *usercmd, int32 *argc )
4900                     ; 801 {
4901                     	switch	.text
4902  068a               L7751_parse_cmd_line:
4904  068a 89            	pushw	x
4905  068b 5209          	subw	sp,#9
4906       00000009      OFST:	set	9
4909                     ; 802 	int32 idx = 0;	
4911  068d ae0000        	ldw	x,#0
4912  0690 1f08          	ldw	(OFST-1,sp),x
4913  0692 ae0000        	ldw	x,#0
4914  0695 1f06          	ldw	(OFST-3,sp),x
4916                     ; 804 	int32 len = 0;			// length of original string
4918                     ; 806 	memset(cmds, 0, MAX_TERMINAL_WIDTH );
4920  0697 ae000e        	ldw	x,#14
4921  069a 89            	pushw	x
4922  069b ae0000        	ldw	x,#0
4923  069e 89            	pushw	x
4924  069f 4b00          	push	#0
4925  06a1 ae0000        	ldw	x,#L1171_cmds
4926  06a4 cd0000        	call	_memset
4928  06a7 5b05          	addw	sp,#5
4929                     ; 807 	*argc = 0;	
4931  06a9 1e10          	ldw	x,(OFST+7,sp)
4932  06ab a600          	ld	a,#0
4933  06ad e703          	ld	(3,x),a
4934  06af a600          	ld	a,#0
4935  06b1 e702          	ld	(2,x),a
4936  06b3 a600          	ld	a,#0
4937  06b5 e701          	ld	(1,x),a
4938  06b7 a600          	ld	a,#0
4939  06b9 f7            	ld	(x),a
4940                     ; 808 	len = strlen(usercmd);
4942  06ba 1e0e          	ldw	x,(OFST+5,sp)
4943  06bc cd0000        	call	_strlen
4945  06bf 96            	ldw	x,sp
4946  06c0 1c0001        	addw	x,#OFST-8
4947  06c3 cd0000        	call	c_rtol
4950  06c6               L3362:
4951                     ; 813 		c = usercmd[idx];
4953  06c6 1e08          	ldw	x,(OFST-1,sp)
4954  06c8 72fb0e        	addw	x,(OFST+5,sp)
4955  06cb f6            	ld	a,(x)
4956  06cc 6b05          	ld	(OFST-4,sp),a
4959  06ce 2022          	jra	L3462
4960  06d0               L7362:
4961                     ; 816 			idx++;
4963  06d0 96            	ldw	x,sp
4964  06d1 1c0006        	addw	x,#OFST-3
4965  06d4 a601          	ld	a,#1
4966  06d6 cd0000        	call	c_lgadc
4969                     ; 817 			c = usercmd[idx];
4971  06d9 1e08          	ldw	x,(OFST-1,sp)
4972  06db 72fb0e        	addw	x,(OFST+5,sp)
4973  06de f6            	ld	a,(x)
4974  06df 6b05          	ld	(OFST-4,sp),a
4976                     ; 820 			if (idx >= len)
4978  06e1 9c            	rvf
4979  06e2 96            	ldw	x,sp
4980  06e3 1c0006        	addw	x,#OFST-3
4981  06e6 cd0000        	call	c_ltor
4983  06e9 96            	ldw	x,sp
4984  06ea 1c0001        	addw	x,#OFST-8
4985  06ed cd0000        	call	c_lcmp
4987  06f0 2e4c          	jrsge	L601
4988                     ; 822 				return;
4990  06f2               L3462:
4991                     ; 814 		while(c <= 32)
4993  06f2 7b05          	ld	a,(OFST-4,sp)
4994  06f4 a121          	cp	a,#33
4995  06f6 25d8          	jrult	L7362
4996                     ; 827 		cmds[*argc] = &usercmd[idx];
4998  06f8 1e08          	ldw	x,(OFST-1,sp)
4999  06fa 72fb0e        	addw	x,(OFST+5,sp)
5000  06fd 1610          	ldw	y,(OFST+7,sp)
5001  06ff 90ee02        	ldw	y,(2,y)
5002  0702 9058          	sllw	y
5003  0704 90ef00        	ldw	(L1171_cmds,y),x
5004                     ; 828 		(*argc)++;
5006  0707 1e10          	ldw	x,(OFST+7,sp)
5007  0709 a601          	ld	a,#1
5008  070b cd0000        	call	c_lgadc
5010                     ; 831 		c = usercmd[idx];
5012  070e 1e08          	ldw	x,(OFST-1,sp)
5013  0710 72fb0e        	addw	x,(OFST+5,sp)
5014  0713 f6            	ld	a,(x)
5015  0714 6b05          	ld	(OFST-4,sp),a
5018  0716 2011          	jra	L5562
5019  0718               L1562:
5020                     ; 835 			idx++;
5022  0718 96            	ldw	x,sp
5023  0719 1c0006        	addw	x,#OFST-3
5024  071c a601          	ld	a,#1
5025  071e cd0000        	call	c_lgadc
5028                     ; 836 			c = usercmd[idx];
5030  0721 1e08          	ldw	x,(OFST-1,sp)
5031  0723 72fb0e        	addw	x,(OFST+5,sp)
5032  0726 f6            	ld	a,(x)
5033  0727 6b05          	ld	(OFST-4,sp),a
5035  0729               L5562:
5036                     ; 833 		while(c > 32)
5038  0729 7b05          	ld	a,(OFST-4,sp)
5039  072b a121          	cp	a,#33
5040  072d 24e9          	jruge	L1562
5041                     ; 840 		usercmd[idx] = '\0';
5043  072f 1e08          	ldw	x,(OFST-1,sp)
5044  0731 72fb0e        	addw	x,(OFST+5,sp)
5045  0734 7f            	clr	(x)
5046                     ; 843 		if( usercmd[idx+1] == NULL )
5048  0735 1e08          	ldw	x,(OFST-1,sp)
5049  0737 72fb0e        	addw	x,(OFST+5,sp)
5050  073a 6d01          	tnz	(1,x)
5051  073c 2688          	jrne	L3362
5052                     ; 845 			break;
5053                     ; 849 }
5054  073e               L601:
5057  073e 5b0b          	addw	sp,#11
5058  0740 81            	ret
5140                     	switch	.const
5141  001a               L211:
5142  001a ffffffff      	dc.l	-1
5143                     ; 861 static void do_command( uint8 *bufidx, char *usercmd )
5143                     ; 862 {
5144                     	switch	.text
5145  0741               L3261_do_command:
5147  0741 89            	pushw	x
5148  0742 5208          	subw	sp,#8
5149       00000008      OFST:	set	8
5152                     ; 863 	int32 res = 0;
5154                     ; 864 	int32 argc = 0;			/*! num of cmd line args	*/
5156  0744 ae0000        	ldw	x,#0
5157  0747 1f03          	ldw	(OFST-5,sp),x
5158  0749 ae0000        	ldw	x,#0
5159  074c 1f01          	ldw	(OFST-7,sp),x
5161                     ; 865 	int32 cmdres = 0;   /*! result after running the cmdfunc.	*/
5163                     ; 868 	*bufidx = strlen ( usercmd );
5165  074e 1e0d          	ldw	x,(OFST+5,sp)
5166  0750 cd0000        	call	_strlen
5168  0753 1e09          	ldw	x,(OFST+1,sp)
5169  0755 b603          	ld	a,c_lreg+3
5170  0757 f7            	ld	(x),a
5171                     ; 871 	if ( *bufidx > 0)
5173  0758 1e09          	ldw	x,(OFST+1,sp)
5174  075a 7d            	tnz	(x)
5175  075b 2603          	jrne	L411
5176  075d cc07e8        	jp	L1272
5177  0760               L411:
5178                     ; 874 		usercmd[*bufidx] = 0;
5180  0760 1e09          	ldw	x,(OFST+1,sp)
5181  0762 f6            	ld	a,(x)
5182  0763 5f            	clrw	x
5183  0764 97            	ld	xl,a
5184  0765 72fb0d        	addw	x,(OFST+5,sp)
5185  0768 7f            	clr	(x)
5186                     ; 876 		add_to_history( bufidx, usercmd);
5188  0769 1e0d          	ldw	x,(OFST+5,sp)
5189  076b 89            	pushw	x
5190  076c 1e0b          	ldw	x,(OFST+3,sp)
5191  076e cd0491        	call	L5751_add_to_history
5193  0771 85            	popw	x
5194                     ; 879 		parse_cmd_line( bufidx, usercmd, &argc );
5196  0772 96            	ldw	x,sp
5197  0773 1c0001        	addw	x,#OFST-7
5198  0776 89            	pushw	x
5199  0777 1e0f          	ldw	x,(OFST+7,sp)
5200  0779 89            	pushw	x
5201  077a 1e0d          	ldw	x,(OFST+5,sp)
5202  077c cd068a        	call	L7751_parse_cmd_line
5204  077f 5b04          	addw	sp,#4
5205                     ; 881 		res = search_through_cmd_list( cmds[0] );
5207  0781 be00          	ldw	x,L1171_cmds
5208  0783 cd02a3        	call	L7651_search_through_cmd_list
5210  0786 6b08          	ld	(OFST+0,sp),a
5211  0788 4f            	clr	a
5212  0789 6b07          	ld	(OFST-1,sp),a
5213  078b 6b06          	ld	(OFST-2,sp),a
5214  078d 6b05          	ld	(OFST-3,sp),a
5216                     ; 883 		if(  res == -1 )
5218  078f 96            	ldw	x,sp
5219  0790 1c0005        	addw	x,#OFST-3
5220  0793 cd0000        	call	c_ltor
5222  0796 ae001a        	ldw	x,#L211
5223  0799 cd0000        	call	c_lcmp
5225  079c 2608          	jrne	L3272
5226                     ; 885 			outstring("\nnot be found");
5228  079e ae00b8        	ldw	x,#L5272
5229  07a1 cd0000        	call	_outstring
5232  07a4 2042          	jra	L1272
5233  07a6               L3272:
5234                     ; 890 			cmdres = cmd_list[res].cmdfunc ( argc, cmds );
5236  07a6 ae0000        	ldw	x,#L1171_cmds
5237  07a9 89            	pushw	x
5238  07aa 1e05          	ldw	x,(OFST-3,sp)
5239  07ac 89            	pushw	x
5240  07ad 1e05          	ldw	x,(OFST-3,sp)
5241  07af 89            	pushw	x
5242  07b0 1e0d          	ldw	x,(OFST+5,sp)
5243  07b2 90ae0006      	ldw	y,#6
5244  07b6 cd0000        	call	c_imul
5246  07b9 ee04          	ldw	x,(L5461_cmd_list+4,x)
5247  07bb fd            	call	(x)
5249  07bc 5b06          	addw	sp,#6
5250  07be 96            	ldw	x,sp
5251  07bf 1c0005        	addw	x,#OFST-3
5252  07c2 cd0000        	call	c_rtol
5255                     ; 891 			mprintf("\ncmdres = [%d]", cmdres);
5257  07c5 1e07          	ldw	x,(OFST-1,sp)
5258  07c7 89            	pushw	x
5259  07c8 1e07          	ldw	x,(OFST-1,sp)
5260  07ca 89            	pushw	x
5261  07cb ae00a9        	ldw	x,#L1372
5262  07ce cd0ac7        	call	_mprintf
5264  07d1 5b04          	addw	sp,#4
5265                     ; 893 			if (cmdres == -1 )
5267  07d3 96            	ldw	x,sp
5268  07d4 1c0005        	addw	x,#OFST-3
5269  07d7 cd0000        	call	c_ltor
5271  07da ae001a        	ldw	x,#L211
5272  07dd cd0000        	call	c_lcmp
5274  07e0 2606          	jrne	L1272
5275                     ; 895 				outstring("\nError");
5277  07e2 ae00a2        	ldw	x,#L5372
5278  07e5 cd0000        	call	_outstring
5280  07e8               L1272:
5281                     ; 901 	outstring("\n");
5283  07e8 ae00f2        	ldw	x,#L1602
5284  07eb cd0000        	call	_outstring
5286                     ; 902 	memset ( usercmd, 0, MAX_TERMINAL_WIDTH );
5288  07ee ae000e        	ldw	x,#14
5289  07f1 89            	pushw	x
5290  07f2 ae0000        	ldw	x,#0
5291  07f5 89            	pushw	x
5292  07f6 4b00          	push	#0
5293  07f8 1e12          	ldw	x,(OFST+10,sp)
5294  07fa cd0000        	call	_memset
5296  07fd 5b05          	addw	sp,#5
5297                     ; 903 	*bufidx = 0;
5299  07ff 1e09          	ldw	x,(OFST+1,sp)
5300  0801 7f            	clr	(x)
5301                     ; 904 	print_prompt();
5303  0802 cd0312        	call	L3651_print_prompt
5305                     ; 906 }
5308  0805 5b0a          	addw	sp,#10
5309  0807 81            	ret
5377                     ; 919 static void	add_char( uint8 *bufidx, char *usercmd, char c )
5377                     ; 920 {
5378                     	switch	.text
5379  0808               L5261_add_char:
5381  0808 89            	pushw	x
5382  0809 5204          	subw	sp,#4
5383       00000004      OFST:	set	4
5386                     ; 923 	len = strlen ( usercmd );
5388  080b 1e09          	ldw	x,(OFST+5,sp)
5389  080d cd0000        	call	_strlen
5391  0810 96            	ldw	x,sp
5392  0811 1c0001        	addw	x,#OFST-3
5393  0814 cd0000        	call	c_rtol
5396                     ; 926 	if ( *bufidx < len )
5398  0817 9c            	rvf
5399  0818 1e05          	ldw	x,(OFST+1,sp)
5400  081a f6            	ld	a,(x)
5401  081b b703          	ld	c_lreg+3,a
5402  081d 3f02          	clr	c_lreg+2
5403  081f 3f01          	clr	c_lreg+1
5404  0821 3f00          	clr	c_lreg
5405  0823 96            	ldw	x,sp
5406  0824 1c0001        	addw	x,#OFST-3
5407  0827 cd0000        	call	c_lcmp
5409  082a 2e5d          	jrsge	L1772
5411  082c 2011          	jra	L7772
5412  082e               L3772:
5413                     ; 931 			usercmd[len + 1] = usercmd[len];
5415  082e 1e03          	ldw	x,(OFST-1,sp)
5416  0830 72fb09        	addw	x,(OFST+5,sp)
5417  0833 f6            	ld	a,(x)
5418  0834 e701          	ld	(1,x),a
5419                     ; 929 		for ( ; len >= *bufidx; len-- )
5421  0836 96            	ldw	x,sp
5422  0837 1c0001        	addw	x,#OFST-3
5423  083a a601          	ld	a,#1
5424  083c cd0000        	call	c_lgsbc
5427  083f               L7772:
5430  083f 9c            	rvf
5431  0840 1e05          	ldw	x,(OFST+1,sp)
5432  0842 f6            	ld	a,(x)
5433  0843 b703          	ld	c_lreg+3,a
5434  0845 3f02          	clr	c_lreg+2
5435  0847 3f01          	clr	c_lreg+1
5436  0849 3f00          	clr	c_lreg
5437  084b 96            	ldw	x,sp
5438  084c 1c0001        	addw	x,#OFST-3
5439  084f cd0000        	call	c_lcmp
5441  0852 2dda          	jrsle	L3772
5442                     ; 935 		usercmd[*bufidx] = c;
5444  0854 1e05          	ldw	x,(OFST+1,sp)
5445  0856 f6            	ld	a,(x)
5446  0857 5f            	clrw	x
5447  0858 97            	ld	xl,a
5448  0859 72fb09        	addw	x,(OFST+5,sp)
5449  085c 7b0b          	ld	a,(OFST+7,sp)
5450  085e f7            	ld	(x),a
5451                     ; 938 		print_prompt();
5453  085f cd0312        	call	L3651_print_prompt
5455                     ; 942       outstring (usercmd );
5457  0862 1e09          	ldw	x,(OFST+5,sp)
5458  0864 cd0000        	call	_outstring
5460                     ; 946 		*bufidx += 1;
5462  0867 1e05          	ldw	x,(OFST+1,sp)
5463  0869 7c            	inc	(x)
5464                     ; 949 		outstring("\r");
5466  086a ae00f0        	ldw	x,#L3032
5467  086d cd0000        	call	_outstring
5469                     ; 953       outchar (0x1b );
5471  0870 a61b          	ld	a,#27
5472  0872 cd0000        	call	_outchar
5474                     ; 954       outchar('[');
5476  0875 a65b          	ld	a,#91
5477  0877 cd0000        	call	_outchar
5479                     ; 955       outhex8 ( (*bufidx + PROMPT_SIZE) );
5481  087a 1e05          	ldw	x,(OFST+1,sp)
5482  087c f6            	ld	a,(x)
5483  087d ab02          	add	a,#2
5484  087f cd0000        	call	_outhex8
5486                     ; 956       outchar('C');
5488  0882 a643          	ld	a,#67
5489  0884 cd0000        	call	_outchar
5492  0887 2013          	jra	L3003
5493  0889               L1772:
5494                     ; 962 		usercmd[*bufidx] = c;
5496  0889 1e05          	ldw	x,(OFST+1,sp)
5497  088b f6            	ld	a,(x)
5498  088c 5f            	clrw	x
5499  088d 97            	ld	xl,a
5500  088e 72fb09        	addw	x,(OFST+5,sp)
5501  0891 7b0b          	ld	a,(OFST+7,sp)
5502  0893 f7            	ld	(x),a
5503                     ; 967       outchar (c );
5505  0894 7b0b          	ld	a,(OFST+7,sp)
5506  0896 cd0000        	call	_outchar
5508                     ; 969 		(*bufidx)++;
5510  0899 1e05          	ldw	x,(OFST+1,sp)
5511  089b 7c            	inc	(x)
5512  089c               L3003:
5513                     ; 971 }
5516  089c 5b06          	addw	sp,#6
5517  089e 81            	ret
5520                     	switch	.const
5521  001e               L5003_match_idx:
5522  001e 00000000      	dc.l	0
5523  0022 000000000000  	ds.b	28
5620                     	switch	.const
5621  003e               L621:
5622  003e 00000002      	dc.l	2
5623                     ; 984 static void	tab_search( uint8 *bufidx, char *usercmd )
5623                     ; 985 {
5624                     	switch	.text
5625  089f               L7261_tab_search:
5627  089f 89            	pushw	x
5628  08a0 522e          	subw	sp,#46
5629       0000002e      OFST:	set	46
5632                     ; 986 	uint32 slen = 0;
5634                     ; 987 	uint32 num_of_matches = 0;
5636  08a2 ae0000        	ldw	x,#0
5637  08a5 1f2c          	ldw	(OFST-2,sp),x
5638  08a7 ae0000        	ldw	x,#0
5639  08aa 1f2a          	ldw	(OFST-4,sp),x
5641                     ; 988 	uint8 i = 0;
5643                     ; 989 	uint32 match_idx[MAX_REGISTERABLE_COMMANDS] = {0};
5645  08ac 96            	ldw	x,sp
5646  08ad 1c000a        	addw	x,#OFST-36
5647  08b0 90ae001e      	ldw	y,#L5003_match_idx
5648  08b4 a620          	ld	a,#32
5649  08b6 cd0000        	call	c_xymvx
5651                     ; 990 	uint8 str_start = 0;
5653  08b9 0f09          	clr	(OFST-37,sp)
5655                     ; 993 	remove_whitespace_front( &str_start, usercmd );
5657  08bb 1e33          	ldw	x,(OFST+5,sp)
5658  08bd 89            	pushw	x
5659  08be 96            	ldw	x,sp
5660  08bf 1c000b        	addw	x,#OFST-35
5661  08c2 cd0a71        	call	L3061_remove_whitespace_front
5663  08c5 85            	popw	x
5664                     ; 995 	slen = strlen(&usercmd[str_start] ) ;
5666  08c6 7b33          	ld	a,(OFST+5,sp)
5667  08c8 97            	ld	xl,a
5668  08c9 7b34          	ld	a,(OFST+6,sp)
5669  08cb 1b09          	add	a,(OFST-37,sp)
5670  08cd 2401          	jrnc	L221
5671  08cf 5c            	incw	x
5672  08d0               L221:
5673  08d0 02            	rlwa	x,a
5674  08d1 cd0000        	call	_strlen
5676  08d4 96            	ldw	x,sp
5677  08d5 1c0005        	addw	x,#OFST-41
5678  08d8 cd0000        	call	c_rtol
5681                     ; 998 	for (i=0; i< num_of_cmds_registered; i++ )
5683  08db 0f2e          	clr	(OFST+0,sp)
5686  08dd 205f          	jra	L1603
5687  08df               L5503:
5688                     ; 1000 		if( strncmp( cmd_list[i].cmd_name, &usercmd[str_start] , slen) == 0 ) //int strncmp(char *dst, char *src, uint32 len)
5690  08df 1e07          	ldw	x,(OFST-39,sp)
5691  08e1 89            	pushw	x
5692  08e2 1e07          	ldw	x,(OFST-39,sp)
5693  08e4 89            	pushw	x
5694  08e5 7b37          	ld	a,(OFST+9,sp)
5695  08e7 97            	ld	xl,a
5696  08e8 7b38          	ld	a,(OFST+10,sp)
5697  08ea 1b0d          	add	a,(OFST-33,sp)
5698  08ec 2401          	jrnc	L421
5699  08ee 5c            	incw	x
5700  08ef               L421:
5701  08ef 02            	rlwa	x,a
5702  08f0 89            	pushw	x
5703  08f1 01            	rrwa	x,a
5704  08f2 7b34          	ld	a,(OFST+6,sp)
5705  08f4 97            	ld	xl,a
5706  08f5 a606          	ld	a,#6
5707  08f7 42            	mul	x,a
5708  08f8 ee00          	ldw	x,(L5461_cmd_list,x)
5709  08fa cd0000        	call	_strncmp
5711  08fd 5b06          	addw	sp,#6
5712  08ff a30000        	cpw	x,#0
5713  0902 2638          	jrne	L5603
5714                     ; 1003 			match_idx[num_of_matches++] = i;
5716  0904 96            	ldw	x,sp
5717  0905 1c000a        	addw	x,#OFST-36
5718  0908 bf02          	ldw	c_lreg+2,x
5719  090a 5f            	clrw	x
5720  090b bf00          	ldw	c_lreg,x
5721  090d 96            	ldw	x,sp
5722  090e 1c0001        	addw	x,#OFST-45
5723  0911 cd0000        	call	c_rtol
5726  0914 96            	ldw	x,sp
5727  0915 1c002a        	addw	x,#OFST-4
5728  0918 cd0000        	call	c_ltor
5730  091b 96            	ldw	x,sp
5731  091c 1c002a        	addw	x,#OFST-4
5732  091f a601          	ld	a,#1
5733  0921 cd0000        	call	c_lgadc
5736  0924 a602          	ld	a,#2
5737  0926 cd0000        	call	c_llsh
5739  0929 96            	ldw	x,sp
5740  092a 1c0001        	addw	x,#OFST-45
5741  092d cd0000        	call	c_ladd
5743  0930 be02          	ldw	x,c_lreg+2
5744  0932 7b2e          	ld	a,(OFST+0,sp)
5745  0934 e703          	ld	(3,x),a
5746  0936 4f            	clr	a
5747  0937 e702          	ld	(2,x),a
5748  0939 e701          	ld	(1,x),a
5749  093b f7            	ld	(x),a
5750  093c               L5603:
5751                     ; 998 	for (i=0; i< num_of_cmds_registered; i++ )
5753  093c 0c2e          	inc	(OFST+0,sp)
5755  093e               L1603:
5758  093e 9c            	rvf
5759  093f 7b2e          	ld	a,(OFST+0,sp)
5760  0941 b703          	ld	c_lreg+3,a
5761  0943 3f02          	clr	c_lreg+2
5762  0945 3f01          	clr	c_lreg+1
5763  0947 3f00          	clr	c_lreg
5764  0949 ae009b        	ldw	x,#L7071_num_of_cmds_registered
5765  094c cd0000        	call	c_lcmp
5767  094f 2f8e          	jrslt	L5503
5768                     ; 1008 	if( num_of_matches == 0 )
5770  0951 96            	ldw	x,sp
5771  0952 1c002a        	addw	x,#OFST-4
5772  0955 cd0000        	call	c_lzmp
5774  0958 2733          	jreq	L031
5775                     ; 1010 		return;
5777                     ; 1012 	else if( num_of_matches == 1 )
5779  095a 96            	ldw	x,sp
5780  095b 1c002a        	addw	x,#OFST-4
5781  095e cd0000        	call	c_ltor
5783  0961 ae0016        	ldw	x,#L26
5784  0964 cd0000        	call	c_lcmp
5786  0967 2627          	jrne	L3703
5787                     ; 1015 		strcpy( &usercmd[0] , cmd_list[ match_idx[0] ].cmd_name );	
5789  0969 1e0c          	ldw	x,(OFST-34,sp)
5790  096b 90ae0006      	ldw	y,#6
5791  096f cd0000        	call	c_imul
5793  0972 ee00          	ldw	x,(L5461_cmd_list,x)
5794  0974 89            	pushw	x
5795  0975 1e35          	ldw	x,(OFST+7,sp)
5796  0977 cd0000        	call	_strcpy
5798  097a 85            	popw	x
5799                     ; 1016 		*bufidx = strlen(usercmd);
5801  097b 1e33          	ldw	x,(OFST+5,sp)
5802  097d cd0000        	call	_strlen
5804  0980 1e2f          	ldw	x,(OFST+1,sp)
5805  0982 b603          	ld	a,c_lreg+3
5806  0984 f7            	ld	(x),a
5807                     ; 1018 		print_prompt();		
5809  0985 cd0312        	call	L3651_print_prompt
5811                     ; 1022       outstring (usercmd );
5813  0988 1e33          	ldw	x,(OFST+5,sp)
5814  098a cd0000        	call	_outstring
5816                     ; 1025 		return;
5817  098d               L031:
5820  098d 5b30          	addw	sp,#48
5821  098f 81            	ret
5822  0990               L3703:
5823                     ; 1027 	else if( num_of_matches > 1 )
5825  0990 96            	ldw	x,sp
5826  0991 1c002a        	addw	x,#OFST-4
5827  0994 cd0000        	call	c_ltor
5829  0997 ae003e        	ldw	x,#L621
5830  099a cd0000        	call	c_lcmp
5832  099d 2555          	jrult	L1703
5833                     ; 1030 		outstring("\n");
5835  099f ae00f2        	ldw	x,#L1602
5836  09a2 cd0000        	call	_outstring
5838                     ; 1031 		for(i=0; i<num_of_matches; i++)
5840  09a5 0f2e          	clr	(OFST+0,sp)
5843  09a7 2030          	jra	L5013
5844  09a9               L1013:
5845                     ; 1037         outstring (cmd_list[ match_idx[i] ].cmd_name );
5847  09a9 96            	ldw	x,sp
5848  09aa 1c000c        	addw	x,#OFST-34
5849  09ad 1f03          	ldw	(OFST-43,sp),x
5851  09af 7b2e          	ld	a,(OFST+0,sp)
5852  09b1 97            	ld	xl,a
5853  09b2 a604          	ld	a,#4
5854  09b4 42            	mul	x,a
5855  09b5 72fb03        	addw	x,(OFST-43,sp)
5856  09b8 fe            	ldw	x,(x)
5857  09b9 90ae0006      	ldw	y,#6
5858  09bd cd0000        	call	c_imul
5860  09c0 ee00          	ldw	x,(L5461_cmd_list,x)
5861  09c2 cd0000        	call	_outstring
5863                     ; 1038 				outstring ("()" );
5865  09c5 ae009f        	ldw	x,#L1113
5866  09c8 cd0000        	call	_outstring
5868                     ; 1042 			if( i%4 )
5870  09cb 7b2e          	ld	a,(OFST+0,sp)
5871  09cd a503          	bcp	a,#3
5872  09cf 2706          	jreq	L3113
5873                     ; 1044 				outstring("\n");
5875  09d1 ae00f2        	ldw	x,#L1602
5876  09d4 cd0000        	call	_outstring
5878  09d7               L3113:
5879                     ; 1031 		for(i=0; i<num_of_matches; i++)
5881  09d7 0c2e          	inc	(OFST+0,sp)
5883  09d9               L5013:
5886  09d9 7b2e          	ld	a,(OFST+0,sp)
5887  09db b703          	ld	c_lreg+3,a
5888  09dd 3f02          	clr	c_lreg+2
5889  09df 3f01          	clr	c_lreg+1
5890  09e1 3f00          	clr	c_lreg
5891  09e3 96            	ldw	x,sp
5892  09e4 1c002a        	addw	x,#OFST-4
5893  09e7 cd0000        	call	c_lcmp
5895  09ea 25bd          	jrult	L1013
5896                     ; 1049 		print_prompt();		
5898  09ec cd0312        	call	L3651_print_prompt
5900                     ; 1053       outstring (usercmd );
5902  09ef 1e33          	ldw	x,(OFST+5,sp)
5903  09f1 cd0000        	call	_outstring
5905  09f4               L1703:
5906                     ; 1057 }
5908  09f4 2097          	jra	L031
5972                     ; 1072 static uint8 check_if_blank_string(uint8 *bufidx, char *usercmd)
5972                     ; 1073 {
5973                     	switch	.text
5974  09f6               L1061_check_if_blank_string:
5976  09f6 89            	pushw	x
5977  09f7 89            	pushw	x
5978       00000002      OFST:	set	2
5981                     ; 1074 	uint8 i = 0;
5983                     ; 1075 	uint8 space_count = 0;
5985  09f8 0f01          	clr	(OFST-1,sp)
5987                     ; 1077 	for( i=0; i<(*bufidx); i++)
5989  09fa 0f02          	clr	(OFST+0,sp)
5992  09fc 2014          	jra	L3513
5993  09fe               L7413:
5994                     ; 1079 		if ( usercmd[i] == 0x20 )
5996  09fe 7b07          	ld	a,(OFST+5,sp)
5997  0a00 97            	ld	xl,a
5998  0a01 7b08          	ld	a,(OFST+6,sp)
5999  0a03 1b02          	add	a,(OFST+0,sp)
6000  0a05 2401          	jrnc	L431
6001  0a07 5c            	incw	x
6002  0a08               L431:
6003  0a08 02            	rlwa	x,a
6004  0a09 f6            	ld	a,(x)
6005  0a0a a120          	cp	a,#32
6006  0a0c 2602          	jrne	L7513
6007                     ; 1081 			space_count++;
6009  0a0e 0c01          	inc	(OFST-1,sp)
6011  0a10               L7513:
6012                     ; 1077 	for( i=0; i<(*bufidx); i++)
6014  0a10 0c02          	inc	(OFST+0,sp)
6016  0a12               L3513:
6019  0a12 1e03          	ldw	x,(OFST+1,sp)
6020  0a14 f6            	ld	a,(x)
6021  0a15 1102          	cp	a,(OFST+0,sp)
6022  0a17 22e5          	jrugt	L7413
6023                     ; 1085 	if( space_count == *bufidx  )
6025  0a19 1e03          	ldw	x,(OFST+1,sp)
6026  0a1b f6            	ld	a,(x)
6027  0a1c 1101          	cp	a,(OFST-1,sp)
6028  0a1e 2604          	jrne	L1613
6029                     ; 1087 		return 1;
6031  0a20 a601          	ld	a,#1
6033  0a22 2001          	jra	L631
6034  0a24               L1613:
6035                     ; 1090 	return 0;
6037  0a24 4f            	clr	a
6039  0a25               L631:
6041  0a25 5b04          	addw	sp,#4
6042  0a27 81            	ret
6107                     ; 1106 static uint8 remove_whitespace_tail(uint8 *bufidx, char *usercmd)
6107                     ; 1107 {
6108                     	switch	.text
6109  0a28               L5061_remove_whitespace_tail:
6111  0a28 89            	pushw	x
6112  0a29 89            	pushw	x
6113       00000002      OFST:	set	2
6116                     ; 1112 	uint8 len = 0;
6118                     ; 1115 	len = strlen(usercmd) - 1;
6120  0a2a 1e07          	ldw	x,(OFST+5,sp)
6121  0a2c cd0000        	call	_strlen
6123  0a2f a601          	ld	a,#1
6124  0a31 cd0000        	call	c_lsbc
6126  0a34 b603          	ld	a,c_lreg+3
6127  0a36 6b02          	ld	(OFST+0,sp),a
6129                     ; 1117 	c = usercmd[len];
6131  0a38 7b07          	ld	a,(OFST+5,sp)
6132  0a3a 97            	ld	xl,a
6133  0a3b 7b08          	ld	a,(OFST+6,sp)
6134  0a3d 1b02          	add	a,(OFST+0,sp)
6135  0a3f 2401          	jrnc	L241
6136  0a41 5c            	incw	x
6137  0a42               L241:
6138  0a42 02            	rlwa	x,a
6139  0a43 f6            	ld	a,(x)
6140  0a44 6b01          	ld	(OFST-1,sp),a
6143  0a46 201c          	jra	L1223
6144  0a48               L5123:
6145                     ; 1121 		usercmd[len] = NULL;
6147  0a48 7b07          	ld	a,(OFST+5,sp)
6148  0a4a 97            	ld	xl,a
6149  0a4b 7b08          	ld	a,(OFST+6,sp)
6150  0a4d 1b02          	add	a,(OFST+0,sp)
6151  0a4f 2401          	jrnc	L441
6152  0a51 5c            	incw	x
6153  0a52               L441:
6154  0a52 02            	rlwa	x,a
6155  0a53 7f            	clr	(x)
6156                     ; 1122 		len--;
6158  0a54 0a02          	dec	(OFST+0,sp)
6160                     ; 1123 		c = usercmd[len];
6162  0a56 7b07          	ld	a,(OFST+5,sp)
6163  0a58 97            	ld	xl,a
6164  0a59 7b08          	ld	a,(OFST+6,sp)
6165  0a5b 1b02          	add	a,(OFST+0,sp)
6166  0a5d 2401          	jrnc	L641
6167  0a5f 5c            	incw	x
6168  0a60               L641:
6169  0a60 02            	rlwa	x,a
6170  0a61 f6            	ld	a,(x)
6171  0a62 6b01          	ld	(OFST-1,sp),a
6173  0a64               L1223:
6174                     ; 1119 	while( (c == 0x20) && (len > 0) )
6176  0a64 7b01          	ld	a,(OFST-1,sp)
6177  0a66 a120          	cp	a,#32
6178  0a68 2604          	jrne	L5223
6180  0a6a 0d02          	tnz	(OFST+0,sp)
6181  0a6c 26da          	jrne	L5123
6182  0a6e               L5223:
6183                     ; 1125 }
6186  0a6e 5b04          	addw	sp,#4
6187  0a70 81            	ret
6233                     ; 1140 static uint8	remove_whitespace_front( uint8 *str_start, char *usercmd )
6233                     ; 1141 {
6234                     	switch	.text
6235  0a71               L3061_remove_whitespace_front:
6237  0a71 89            	pushw	x
6238       00000000      OFST:	set	0
6241                     ; 1142 	*str_start = 0;
6243  0a72 7f            	clr	(x)
6245  0a73 2003          	jra	L5523
6246  0a75               L1523:
6247                     ; 1146 		(*str_start)++;
6249  0a75 1e01          	ldw	x,(OFST+1,sp)
6250  0a77 7c            	inc	(x)
6251  0a78               L5523:
6252                     ; 1144 	while( usercmd[*str_start] == 0x20)
6252                     ; 1145 	{
6252                     ; 1146 		(*str_start)++;
6254  0a78 1e01          	ldw	x,(OFST+1,sp)
6255  0a7a f6            	ld	a,(x)
6256  0a7b 5f            	clrw	x
6257  0a7c 97            	ld	xl,a
6258  0a7d 72fb05        	addw	x,(OFST+5,sp)
6259  0a80 f6            	ld	a,(x)
6260  0a81 a120          	cp	a,#32
6261  0a83 27f0          	jreq	L1523
6262                     ; 1148 }
6265  0a85 85            	popw	x
6266  0a86 81            	ret
6312                     ; 1162 static int32 mprintf_enable(uint32 a , char **b)
6312                     ; 1163 {
6313                     	switch	.text
6314  0a87               L1461_mprintf_enable:
6316  0a87 88            	push	a
6317       00000001      OFST:	set	1
6320                     ; 1167 	if( c == 'y' )
6322  0a88 7b01          	ld	a,(OFST+0,sp)
6323  0a8a a179          	cp	a,#121
6324  0a8c 260c          	jrne	L3033
6325                     ; 1170 		mprintf_on = true;
6327  0a8e 35010092      	mov	L7761_mprintf_on,#1
6328                     ; 1171 		outstring("mprintf enabled\n");
6330  0a92 ae008e        	ldw	x,#L5033
6331  0a95 cd0000        	call	_outstring
6334  0a98 2021          	jra	L7033
6335  0a9a               L3033:
6336                     ; 1173 	else if ( c == 'n' )
6338  0a9a 7b01          	ld	a,(OFST+0,sp)
6339  0a9c a16e          	cp	a,#110
6340  0a9e 260a          	jrne	L1133
6341                     ; 1176 		mprintf_on = false;
6343  0aa0 3f92          	clr	L7761_mprintf_on
6344                     ; 1177 		outstring("mprintf disabled\n");
6346  0aa2 ae007c        	ldw	x,#L3133
6347  0aa5 cd0000        	call	_outstring
6350  0aa8 2011          	jra	L7033
6351  0aaa               L1133:
6352                     ; 1184       outstring ("not recognised" );
6354  0aaa ae006d        	ldw	x,#L7133
6355  0aad cd0000        	call	_outstring
6357                     ; 1185       outchar(mprintf_on);
6359  0ab0 b692          	ld	a,L7761_mprintf_on
6360  0ab2 cd0000        	call	_outchar
6362                     ; 1186       outstring("\n");
6364  0ab5 ae00f2        	ldw	x,#L1602
6365  0ab8 cd0000        	call	_outstring
6367  0abb               L7033:
6368                     ; 1190 	return 0;
6370  0abb ae0000        	ldw	x,#0
6371  0abe bf02          	ldw	c_lreg+2,x
6372  0ac0 ae0000        	ldw	x,#0
6373  0ac3 bf00          	ldw	c_lreg,x
6376  0ac5 84            	pop	a
6377  0ac6 81            	ret
6412                     ; 1207 int32 mprintf( char* fmt,... )
6412                     ; 1208 {
6413                     	switch	.text
6414  0ac7               _mprintf:
6418                     ; 1217 }
6421  0ac7 81            	ret
6456                     ; 1235 static int32	exit (uint32 a, char ** b)
6456                     ; 1236 {
6457                     	switch	.text
6458  0ac8               L5361_exit:
6462                     ; 1237 	outstring("\nThis is exit, but we won't...");
6464  0ac8 ae004e        	ldw	x,#L5533
6465  0acb cd0000        	call	_outstring
6467                     ; 1238 	return 0;
6469  0ace ae0000        	ldw	x,#0
6470  0ad1 bf02          	ldw	c_lreg+2,x
6471  0ad3 ae0000        	ldw	x,#0
6472  0ad6 bf00          	ldw	c_lreg,x
6475  0ad8 81            	ret
6530                     ; 1245 static int32 example_func(uint32 a , char **b)
6530                     ; 1246 {
6531                     	switch	.text
6532  0ad9               L3461_example_func:
6534  0ad9 88            	push	a
6535       00000001      OFST:	set	1
6538                     ; 1247 	uint8 i=0;
6540                     ; 1250 	for(i=0; i<a; i++)
6542  0ada 0f01          	clr	(OFST+0,sp)
6545  0adc 2014          	jra	L1143
6546  0ade               L5043:
6547                     ; 1255       outstring("\nstring is ");
6549  0ade ae0042        	ldw	x,#L5143
6550  0ae1 cd0000        	call	_outstring
6552                     ; 1256       outstring(b[i]);
6554  0ae4 7b01          	ld	a,(OFST+0,sp)
6555  0ae6 5f            	clrw	x
6556  0ae7 97            	ld	xl,a
6557  0ae8 58            	sllw	x
6558  0ae9 72fb08        	addw	x,(OFST+7,sp)
6559  0aec fe            	ldw	x,(x)
6560  0aed cd0000        	call	_outstring
6562                     ; 1250 	for(i=0; i<a; i++)
6564  0af0 0c01          	inc	(OFST+0,sp)
6566  0af2               L1143:
6569  0af2 7b01          	ld	a,(OFST+0,sp)
6570  0af4 b703          	ld	c_lreg+3,a
6571  0af6 3f02          	clr	c_lreg+2
6572  0af8 3f01          	clr	c_lreg+1
6573  0afa 3f00          	clr	c_lreg
6574  0afc 96            	ldw	x,sp
6575  0afd 1c0004        	addw	x,#OFST+3
6576  0b00 cd0000        	call	c_lcmp
6578  0b03 25d9          	jrult	L5043
6579                     ; 1259 	return 0;
6581  0b05 ae0000        	ldw	x,#0
6582  0b08 bf02          	ldw	c_lreg+2,x
6583  0b0a ae0000        	ldw	x,#0
6584  0b0d bf00          	ldw	c_lreg,x
6587  0b0f 84            	pop	a
6588  0b10 81            	ret
6613                     ; 1273 static bool keypressed(void)
6613                     ; 1274 {
6614                     	switch	.text
6615  0b11               L3751_keypressed:
6619                     ; 1276   if (ischar != 0) // was _ischar
6621  0b11 ae0000        	ldw	x,#_ischar
6622  0b14 a30000        	cpw	x,#0
6623  0b17 2704          	jreq	L7243
6624                     ; 1278     return(ischar()); // was _ischar
6626  0b19 cd0000        	call	_ischar
6630  0b1c 81            	ret
6631  0b1d               L7243:
6632                     ; 1282     return(false);
6634  0b1d 4f            	clr	a
6637  0b1e 81            	ret
6804                     	switch	.ubsct
6805  0000               L1171_cmds:
6806  0000 000000000000  	ds.b	28
6807  001c               L1071_cmd_history:
6808  001c 000000000000  	ds.b	28
6809                     	xdef	_mprintf
6810                     	xdef	_m_cli
6811                     	xref	_sleep
6812                     	xref	_outhex8
6813                     	xref	_outstring
6814                     	xref	_outchar
6815                     	xref	_readchar
6816                     	xref	_ischar
6817                     	xref	_strncmp
6818                     	xref	_strcpy
6819                     	xref	_strlen
6820                     	xref	_memcmp
6821                     	xref	_memset
6822                     	xref	_memcpy
6823                     	switch	.const
6824  0042               L5143:
6825  0042 0a737472696e  	dc.b	10,115,116,114,105,110
6826  0048 672069732000  	dc.b	"g is ",0
6827  004e               L5533:
6828  004e 0a5468697320  	dc.b	10,84,104,105,115,32
6829  0054 697320657869  	dc.b	"is exit, but we wo"
6830  0066 6e27742e2e2e  	dc.b	"n't...",0
6831  006d               L7133:
6832  006d 6e6f74207265  	dc.b	"not recognised",0
6833  007c               L3133:
6834  007c 6d7072696e74  	dc.b	"mprintf disabled",10,0
6835  008e               L5033:
6836  008e 6d7072696e74  	dc.b	"mprintf enabled",10,0
6837  009f               L1113:
6838  009f 282900        	dc.b	"()",0
6839  00a2               L5372:
6840  00a2 0a4572726f72  	dc.b	10,69,114,114,111,114,0
6841  00a9               L1372:
6842  00a9 0a636d647265  	dc.b	10,99,109,100,114,101
6843  00af 73203d205b25  	dc.b	"s = [%d]",0
6844  00b8               L5272:
6845  00b8 0a6e6f742062  	dc.b	10,110,111,116,32,98
6846  00be 6520666f756e  	dc.b	"e found",0
6847  00c6               L1152:
6848  00c6 0a20636f756c  	dc.b	10,32,99,111,117,108
6849  00cc 64206e6f7420  	dc.b	"d not add to histo"
6850  00de 727900        	dc.b	"ry",0
6851  00e1               L3632:
6852  00e1 5b314400      	dc.b	"[1D",0
6853  00e5               L1432:
6854  00e5 5b314300      	dc.b	"[1C",0
6855  00e9               L7032:
6856  00e9 3e3e00        	dc.b	">>",0
6857  00ec               L5032:
6858  00ec 5b324b00      	dc.b	"[2K",0
6859  00f0               L3032:
6860  00f0 0d00          	dc.b	13,0
6861  00f2               L1602:
6862  00f2 0a00          	dc.b	10,0
6863  00f4               L7502:
6864  00f4 0a4e616d6509  	dc.b	10,78,97,109,101,9
6865  00fa 68656c7000    	dc.b	"help",0
6866  00ff               L7571:
6867  00ff 0a57656c636f  	dc.b	10,87,101,108,99,111
6868  0105 6d650a00      	dc.b	"me",10,0
6869  0109               L3761:
6870  0109 6578616d706c  	dc.b	"example_func funct"
6871  011b 696f6e00      	dc.b	"ion",0
6872  011f               L1761:
6873  011f 6578616d706c  	dc.b	"example_use",0
6874  012b               L7661:
6875  012b 00            	dc.b	0
6876  012c               L5661:
6877  012c 6d616e00      	dc.b	"man",0
6878  0130               L3661:
6879  0130 6c6973747320  	dc.b	"lists registered t"
6880  0142 61736b7300    	dc.b	"asks",0
6881  0147               L1661:
6882  0147 6c69737400    	dc.b	"list",0
6883  014c               L7561:
6884  014c 657869747320  	dc.b	"exits the app",0
6885  015a               L5561:
6886  015a 6578697400    	dc.b	"exit",0
6887  015f               L3561:
6888  015f 3f00          	dc.b	"?",0
6889  0161               L1561:
6890  0161 68656c70206d  	dc.b	"help menu",0
6891  016b               L7461:
6892  016b 68656c7000    	dc.b	"help",0
6893                     	xref.b	c_lreg
6894                     	xref.b	c_x
6914                     	xref	c_llsh
6915                     	xref	c_ladc
6916                     	xref	c_lsub
6917                     	xref	c_lsbc
6918                     	xref	c_lgsbc
6919                     	xref	c_lzmp
6920                     	xref	c_lrzmp
6921                     	xref	c_ladd
6922                     	xref	c_rtol
6923                     	xref	c_lgadc
6924                     	xref	c_imul
6925                     	xref	c_lcmp
6926                     	xref	c_ltor
6927                     	xref	c_xymvx
6928                     	end
