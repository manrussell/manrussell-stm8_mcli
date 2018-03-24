/**
 * \file        m_cli_main.c
 *
 * \par
 *
 * \date        2016/06/16 04:16:52
 *
 * \brief       Simply runs M-Cli
 *
 * \code
 * Copyright 
 * \endcode
 */

#include "mlib.h"
#include "uart_stm8.h"
#include "tim_4_stm8.h"
#include "m_cli.h"
#include "STM8S103F3.h"

#ifndef OS_VERSION
u32 main ( void )
{
  CLK_CKDIVR = 0x00;				// Main freq divided by 1 = Full Freq
  #ifdef USE_EXTERNAL_XTAL
  CLK_SWCR = 0x02;					// Clock switch enable
  CLK_SWR = 0xB4;						// Switch to HSE (16MHz)
  while (CLK_SWCR & 0x01);	// Wait till HSE ready
  CLK_ICKR &= ~0x01;				// Disable the previous clock source (HSI)
  #endif

	// Initialise Port D (UART + LED's)
	
	PD_DDR = 0x1F;						// Leave top 3 bits as input
	PD_CR1 = 0x1F;						// top 3 bits have pull up
	PD_CR2 = 0x00;
	
	// Initialise UART
	
	uart_init();

	outstring("\n\nSTM8 Test #06 \n\n");
	
	//TIM4_timer_init();
	EnableInterrupts();
	
  //reset the terminal to be black
  //setbgcol(ATTR_BLACK);
  
	//clreos();
  #if PC_VERSION
    printf("%c[K",0x1b);
  #else
    outchar (0x1b );
    outstring("[k");
  #endif


	outstring ( "\n!WELCOME TO M-Cli!");
	m_cli();

	return 0;
}

#else //OS_VERSION
  //todo

#endif // OS_VERSION

/* end of file */
