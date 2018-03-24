#ifndef __UART_H__
#define __UART_H__

//#include "global.h"
#include "mlib.h"
//#include "serial_terminal.h"


#define CLOCKRATE 				16000000		// CPU Clock Rate
/* UART Hack!! */

#define UART3_SR    UART1_SR  
#define UART3_DR    UART1_DR  
#define UART3_BRR1  UART1_BRR1
#define UART3_BRR2  UART1_BRR2
#define UART3_CR1   UART1_CR1 
#define UART3_CR2   UART1_CR2 
#define UART3_CR3   UART1_CR3 
#define UART3_CR4   UART1_CR4 
#define UART3_CR5   UART1_CR5 
#define UART3_GTR   UART1_GTR 
#define UART3_PSCR  UART1_PSCR

///
#define printf(x)     	outstring(x)
#define uart_getchar    readchar
#define uart_ischar     ischar


 void  uart_init(void);
 u8    ischar(void);
 u8    readchar(void);
 void  outchar(char c);
 void  outstring(char *s);
 void  _outhex(u32 v, u8 len);
 void  outhex8(u8 d);
 void  outhex16(u16 d);
 void  outhex32(u32 d);
 
 


#endif 	/* __UART_H__ */
