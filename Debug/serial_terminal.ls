   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.10 - 06 Jul 2017
   3                     ; Generator (Limited) V4.4.7 - 05 Oct 2017
  14                     	bsct
  15  0000               L3_cmap:
  16  0000 00            	dc.b	0
  17  0001 04            	dc.b	4
  18  0002 02            	dc.b	2
  19  0003 06            	dc.b	6
  20  0004 01            	dc.b	1
  21  0005 05            	dc.b	5
  22  0006 03            	dc.b	3
  23  0007 07            	dc.b	7
  54                     ; 25 void clrline(void)
  54                     ; 26 {
  56                     	switch	.text
  57  0000               _clrline:
  61                     ; 30     outchar (0x1b );
  63  0000 a61b          	ld	a,#27
  64  0002 cd0000        	call	_outchar
  66                     ; 31     outstring("[2k");
  68  0005 ae000a        	ldw	x,#L32
  69  0008 cd0000        	call	_outstring
  71                     ; 33 }
  74  000b 81            	ret
  99                     ; 40 void clrsol(void)
  99                     ; 41 {
 100                     	switch	.text
 101  000c               _clrsol:
 105                     ; 45     outchar (0x1b );
 107  000c a61b          	ld	a,#27
 108  000e cd0000        	call	_outchar
 110                     ; 46     outstring("[1k");
 112  0011 ae0006        	ldw	x,#L53
 113  0014 cd0000        	call	_outstring
 115                     ; 48 }
 118  0017 81            	ret
 143                     ; 55 void clreol(void)
 143                     ; 56 {
 144                     	switch	.text
 145  0018               _clreol:
 149                     ; 60     outchar (0x1b );
 151  0018 a61b          	ld	a,#27
 152  001a cd0000        	call	_outchar
 154                     ; 61     outstring("[k");
 156  001d ae0003        	ldw	x,#L74
 157  0020 cd0000        	call	_outstring
 159                     ; 63 }
 162  0023 81            	ret
 187                     ; 70 void clrsos(void)
 187                     ; 71 {
 188                     	switch	.text
 189  0024               _clrsos:
 193                     ; 75     outchar (0x1b );
 195  0024 a61b          	ld	a,#27
 196  0026 cd0000        	call	_outchar
 198                     ; 76     outstring("[J");
 200  0029 ae0000        	ldw	x,#L16
 201  002c cd0000        	call	_outstring
 203                     ; 78 }
 206  002f 81            	ret
 231                     ; 84 void clreos(void)
 231                     ; 85 {
 232                     	switch	.text
 233  0030               _clreos:
 237                     ; 89     outchar (0x1b );
 239  0030 a61b          	ld	a,#27
 240  0032 cd0000        	call	_outchar
 242                     ; 90     outstring("[J");
 244  0035 ae0000        	ldw	x,#L16
 245  0038 cd0000        	call	_outstring
 247                     ; 92 }
 250  003b 81            	ret
 286                     ; 99 void setbgcol(s32 bg)
 286                     ; 100 {
 287                     	switch	.text
 288  003c               _setbgcol:
 290       00000000      OFST:	set	0
 293                     ; 104     outchar (0x1b );
 295  003c a61b          	ld	a,#27
 296  003e cd0000        	call	_outchar
 298                     ; 105     outchar('[');
 300  0041 a65b          	ld	a,#91
 301  0043 cd0000        	call	_outchar
 303                     ; 106     outchar ( cmap[bg & 7] + 40);
 305  0046 7b05          	ld	a,(OFST+5,sp)
 306  0048 97            	ld	xl,a
 307  0049 7b06          	ld	a,(OFST+6,sp)
 308  004b a407          	and	a,#7
 309  004d 5f            	clrw	x
 310  004e 02            	rlwa	x,a
 311  004f e600          	ld	a,(L3_cmap,x)
 312  0051 ab28          	add	a,#40
 313  0053 cd0000        	call	_outchar
 315                     ; 107     outchar('m');
 317  0056 a66d          	ld	a,#109
 318  0058 cd0000        	call	_outchar
 320                     ; 109 }
 323  005b 81            	ret
 348                     	xref	_outstring
 349                     	xref	_outchar
 350                     	xdef	_setbgcol
 351                     	xdef	_clreos
 352                     	xdef	_clrsos
 353                     	xdef	_clreol
 354                     	xdef	_clrsol
 355                     	xdef	_clrline
 356                     .const:	section	.text
 357  0000               L16:
 358  0000 5b4a00        	dc.b	"[J",0
 359  0003               L74:
 360  0003 5b6b00        	dc.b	"[k",0
 361  0006               L53:
 362  0006 5b316b00      	dc.b	"[1k",0
 363  000a               L32:
 364  000a 5b326b00      	dc.b	"[2k",0
 384                     	end
