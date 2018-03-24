#ifndef __UART_C__
#define __UART_C__

#include "STM8S103F.h"

#include "uart_stm8.h"

//DEFINES
#define BAUD							115200			// Required Baud Rate
#define BAUDSETTING (CLOCKRATE / BAUD)

//	makes baud = 31250
//	#define MIDI_UART

//TYPE DEFINES


//GLOBALS


// -----------------
//| Initialise UART |
// -----------------

/*
**	\fn 		void uart_init(void)
**	\brief	setup GPIO's, and baudrate
**
*/
void uart_init(void)
{
	// Set RS232 Mode (8 data bits, 1 stop bit, no parity)

	UART3_CR1 = 0x00;
	UART3_CR3 = 0x00;
	UART3_CR4 = 0x00;

	#ifndef MIDI_UART
		UART3_BRR2 = (u8)(((BAUDSETTING >> 8) & 0xF0) | (BAUDSETTING & 0x0F));
		UART3_BRR1 = (u8)((BAUDSETTING >> 4) & 0xFF);
	#else
		//for midi 31250 baud = clock division of 0x200
		UART3_BRR2 = (u8)((BAUDSETTING >> 8) & 0x0); 									// clear everything
		UART3_BRR1 = (u8)(((BAUDSETTING >> 8) & 0xF0) | (0x20 & 0xFF));	// clear then set as 0x20 == 512 as a divisor
	#endif

	UART3_CR2 = 0x0C;	// Done last as enables transmitter and reciever
}


// --------------------------
//| Is a characher available |
// --------------------------

u8 ischar(void)
{
	return((UART3_SR & 0x20) !=0);
}


// ------------------
//| Read a character |
// ------------------

 u8 readchar(void)
{
	while(!ischar()) { }
	return(UART3_DR);
}


// --------------------
//| Output a character |
// --------------------

void outchar(char c)
{
	while(1)
	{
		u8 stat = UART3_SR;
		if (stat & 0x40) break; // UART2_TC (transmision complete)
	}

	UART3_DR = c;
}


// -------------------
//| Output hex string |
// -------------------

void _outhex(u32 v, u8 len)
{
	u8 	 i;
	u32  s;
	char c;

	for (i = 0; i < len; i++)
	{
		s = ((len - i) - 1) << 2;
		c = (v >> s) & 15;
		if (c > 9) c += (65 - 48 - 10);
		outchar(c + 48);
	}
}


// -----------
//| Outstring |
// -----------

void outstring(char *s)
{
	while (*s != '\0')
	{
		outchar(*s++);
	}
}


// --------
//| OutHex |
// --------

void outhex8(u8 d)
{
	_outhex(d,2);
}

void outhex16(u16 d)
{
	_outhex(d,4);
}

void outhex32(u32 d)
{
	_outhex(d,8);
}

// u32 printf( char* fmt,...)
// {
  // va_list args;
  // int32   ret_val;
  // va_start(args,fmt);
  ////enter_critical_section(&cs_printf);
  // ret_val = do_printf(NULL, false, 0xffffffff, fmt, args);
  ////leave_critical_section(&cs_printf);

  // va_end(args);
  // return(ret_val);
// }


#endif // __UART_C__
