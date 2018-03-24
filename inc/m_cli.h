/*!
 *********************************************************************
 **
 ** \file       m_cli.h
 **
 ** \author    	mark russell (mrussell)
 ** \date       24/10/2016
 **
 ** \brief
 **
 ** \code
 ** Copyright :
 ** \endcode
 **
 **********************************************************************/

#ifndef __M_CLI_H__
#define __M_CLI_H__

/* Build Options  */
//#define OS_VERSION // UCOS_1
//#define INC_UBASIC

#include "mlib.h"

// Colours

#define ATTR_BLACK            0
#define ATTR_BLUE             1
#define ATTR_GREEN            2
#define ATTR_CYAN             3
#define ATTR_RED              4
#define ATTR_MAGENTA          5
#define ATTR_YELLOW           6
#define ATTR_WHITE            7
#define ATTR_BRIGHT_BLACK     8
#define ATTR_BRIGHT_BLUE      9
#define ATTR_BRIGHT_GREEN     10
#define ATTR_BRIGHT_CYAN      11
#define ATTR_BRIGHT_RED       12
#define ATTR_BRIGHT_MAGENTA   13
#define ATTR_BRIGHT_YELLOW    14
#define ATTR_BRIGHT_WHITE     15


// Keyboard keys
// these define want to be below 32 or above 127 so they are not recognised as a char input

#define KEY_TAB         0x09
#define KEY_RETURN      0x0D
#define KEY_SPACE       0x20
#define KEY_BSPACE      127

#define KEY_CRSR_UP     128
#define KEY_CRSR_DOWN   129
#define KEY_CRSR_RIGHT  130
#define KEY_CRSR_LEFT   131

#define KEY_HOME        132
#define KEY_INSERT      133
#define KEY_DELETE      134
#define KEY_END         135
#define KEY_PAGEUP      136
#define KEY_PAGEDOWN    137

/*!
\typedef CMDFUNC
\brief   Function pointer to function to run from a list.
\param [in]  uint32		:	argc
\param [in]  char **	:	argv[]
*/
typedef int32 ( *CMDFUNC ) ( uint32, char ** );


/*!
\typedef  COMMAND
\brief   	Structure holds info about available command, array of commands == a list of commands for the user
*/
typedef struct
{
	char *cmd_name;        /*! no spaces in the name please! */
	char *cmd_help;        /*! help for this command*/
	CMDFUNC cmdfunc;       /*! pointer to the function to run. */
} COMMAND;

/*!
\typedef  KEYTRANS
\brief   	Keyboard translate table entry
*/
typedef struct
{
  uint8 newcode;        	/*! new code for the uint8, > 127 basically	*/
  uint8 cmplen;        		/*! length of the ascii sequence	*/
  uint8 cmparray[8];      /*! holds the ascii sequence	*/
} KEYTRANS;


/*!
\typedef  KEYINFO
\brief   	Structure holds info about Keyboard presses - used by capture_key_codes()
*/
typedef struct
{
	uint8 keyname[16];    /*! name of key pressed	*/
	uint8 seqlen;        	/*! length of sequence	*/
	uint8 seqarray[16];   /*! holds the complete escape sequence	*/
} KEYINFO;


/*  Prototypes */

/*!
\fn  		int32 m_cli (void)
\brief  starts the cli.
*/
int32 m_cli (void);

/*!
\fn  		int32 mprintf( char* fmt,... )
\brief  wrapper for printf, disabled if global mprintf_on == false.
*/
int32 mprintf( char* fmt,... );

#endif /* __M_CLI_H__ */

