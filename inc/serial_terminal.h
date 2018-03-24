#ifndef __SERIAL_TERMINAL_H__
#define __SERIAL_TERMINAL_H__

// console operations
#include "mlib.h"

// --------------------
//| Erase current line |
// --------------------

void clrline(void);


// ------------------------------------
//| Clear from start of line to cursor |
// ------------------------------------

void clrsol(void);


// ----------------------
//| Clear to end of line |
// ----------------------

void clreol(void);


// ------------------------
//| Clear to start of screen |
// ------------------------

void clrsos(void);
// ------------------------
//| Clear to end of screen |
// ------------------------

void clreos(void);

// -----------------------
//| Set Background colour |
// -----------------------

void setbgcol(s32 bg);

// -----------------------
//| Set Foreground colour |
// -----------------------

void setfgcol(s32 fg);

// ------------------
//| Reset Attribures |
// ------------------

void reset_terminal(void);
#endif /* __SERIAL_TERMINAL_H__ */