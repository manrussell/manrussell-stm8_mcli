// console operations
#ifndef __SERIAL_TERMINAL_C__
#define __SERIAL_TERMINAL_C__

#include "serial_terminal.h"
#include "uart_stm8.h"

// change printf to outstring()

// --------
//| Tables |
// --------

// Map PC colours to VT100
// PC order :  0 = black, 1 = Blue,    2 = Green,  3 = Cyan,
//             4 = Red,   5 = Magenta, 6 = Yellow, 7 = White

static u8 cmap[8] = {0,4,2,6,1,5,3,7};


// --------------------
//| Erase current line |
// --------------------

void clrline(void)
{
  #if PC_VERSION
    printf("%c[2K", 0x1b);
  #else
    outchar (0x1b );
    outstring("[2k");
  #endif
}


// ------------------------------------
//| Clear from start of line to cursor |
// ------------------------------------

void clrsol(void)
{
  #if PC_VERSION
    printf("%c[1K",0x1b);
  #else
    outchar (0x1b );
    outstring("[1k");
  #endif
}


// ----------------------
//| Clear to end of line |
// ----------------------

void clreol(void)
{
  #if PC_VERSION
    printf("%c[K",0x1b);
  #else
    outchar (0x1b );
    outstring("[k");
  #endif
}


// ------------------------
//| Clear to start of screen |
// ------------------------

void clrsos(void)
{
  #if PC_VERSION
    printf("%c[J",0x1b);
  #else
    outchar (0x1b );
    outstring("[J");
  #endif
}

// ------------------------
//| Clear to end of screen |
// ------------------------

void clreos(void)
{
  #if PC_VERSION
    printf("%c[J",0x1b);
  #else
    outchar (0x1b );
    outstring("[J");
  #endif  
}


// -----------------------
//| Set Background colour |
// -----------------------

void setbgcol(s32 bg)
{
  #if PC_VERSION
    printf("%c[%dm",0x1b,cmap[bg & 7] + 40);
  #else
    outchar (0x1b );
    outchar('[');
    outchar ( cmap[bg & 7] + 40);
    outchar('m');
  #endif
}

/*
// -----------------------
//| Set Foreground colour |
// -----------------------

void setfgcol(s32 fg)
{
  if (fg & 8)
  {
    printf("%c[1m",0x1b); // double intensity
  }
  else
  {
    printf("%c[1m",0x1b); // normal intensity
  }
  printf("%c[%dm",0x1b,cmap[fg & 7] + 30);
}


// ------------------
//| Reset Attribures |
// ------------------

void reset_terminal(void)
{
  printf("%c[0m",0x1b); // All attributes off
}

*/

#endif /* __SERIAL_TERMINAL_C__ */