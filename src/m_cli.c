/*!
 *********************************************************************
 **
 ** \file       m_cli.c
 **
 ** \author    	mark russell
 ** \date       24/10/2016
 **
 ** \brief			A cli that will run functions from a list, cmd_list[]. 
 **             it will pass to the functions argc and argv[]. The command history will 
 **             hold HISTORY_BUFFER_SIZE of the last commands entered.
 **
 ** \code
 ** Copyright :
 ** \endcode
 **
 **********************************************************************/
#ifndef __M_CLI_C__
#define __M_CLI_C__

/*
	build option with/without history functionslity
*/

#include "uart_stm8.h"
#include "tim_4_stm8.h"
#include "m_cli.h"

#ifdef INC_UBASIC
  #include "use_ubasic.h"
#endif


// keep prompt inbetween quotes, they are not part of the prompt, and don't forget change PROMPT_SIZE
#define PROMPT										">>"
#define PROMPT_SIZE								2			// size of prompt without quotes
// below values were; 31,64,78
#define	HISTORY_BUFFER_SIZE				2   	// keep this to a pow of 2 so history will wrap properly
#define	MAX_REGISTERABLE_COMMANDS	8			//update this when adding commands
#define MAX_TERMINAL_WIDTH				(16 - PROMPT_SIZE)	// maximum chars per terminal line, keep to one line

// Prototypes
/////////////

static void 	print_prompt( void );
static void 	read_key ( char *c, uint8 *s );
static uint8	search_through_cmd_list ( char *name);
static uint8	read_keyboard(void);
static bool   keypressed(void);

static void		add_to_history(uint8 *bufidx, char *usercmd);
static void		parse_cmd_line( uint8 *bufidx, char *usercmd, int32 *argc );
static uint8 	check_if_blank_string(uint8 *bufidx, char *usercmd);
static uint8	remove_whitespace_front( uint8 *str_start, char *usercmd );
static uint8 	remove_whitespace_tail(uint8 *bufidx, char *usercmd);

static void 	cursor_left ( uint8 *bufidx );
static void 	cursor_right ( uint8 	*bufidx, char *usercmd  );
static void 	cursor_up ( uint8 *bufidx, char *usercmd );
static void 	cursor_down ( uint8 *bufidx, char *usercmd );
static void		back_space ( uint8 *bufidx, char *usercmd );
static void 	del_key ( uint8 *bufidx, char *usercmd );
static void 	do_command ( uint8 *bufidx, char *usercmd );
static void		add_char ( uint8 *bufidx, char *usercmd, char c );
static void		tab_search( uint8 *bufidx, char *usercmd );


// To enter your own functions in the cmd_list[] write in this format.
static int32 	general_help_print (uint32 a, char ** b);
static int32 	print_help_for_registered_cmd(uint32 a, char ** b);
static int32	exit (uint32 a, char ** b);
static int32	list (uint32 a, char ** b);
static int32 	mprintf_enable(uint32 a, char **b);

// Example/test functions
// write in your functions in this format
static int32 example_func(uint32 a, char ** b);


//GLOBALS/
//////////

static COMMAND cmd_list[] = 
{
  {
		"help",
		"help menu",
		&general_help_print,
	},
	
  {
		"?",
		"help menu",
		&general_help_print,
	},
	
	{
		"exit",
		"exits the app",
		&exit,
	},
	
	{
		"list",
		"lists registered tasks",
		&list,
	},
	
	{
		"man",
		"", //"prints the help from the registered command in the cmd_list[], type 'helpcmd list'",
		&print_help_for_registered_cmd,
	},
	
	// {
		// "mprintf_enable",
		// "turns on a useable debug print. type at cli 'mprintf_enable y' or, 'mprintf_enable n' and use the mprintf() just like printf().",
		// &mprintf_enable,
	// },
	
	{
		"example_use",
		"example_func function",
		&example_func,
	},
 	
#ifdef INC_UBASIC
	{
		"ub",
		"run uBasics scripts",
		&uBasicmain, // int32 uBasicmain(uint32 a, char ** b);
	},
  
	{
		"list_uBasic_Programs",
		"list_uBasic_Programs scripts",
		&list_uBasic_Programs,
	},
  
	{
		"ubgui",
		"uBasicGui scripts",
		&uBasicGui,
	},
  
	{
		"ubw",
		"write uBasic scripts",
		&ubasicProgWrite,
	},
#endif  /* INC_UBASIC */  
	
};


/* used in read_keyboard() - converts an ascii escape sequence into a uint 8 number */
static KEYTRANS ktable[] = 
{
  {KEY_CRSR_UP,    2, {91, 'A',   0, 0, 0, 0, 0, 0 }}, // Cursor Up
  {KEY_CRSR_DOWN,  2, {91, 'B',   0, 0, 0, 0, 0, 0 }}, // Cursor Down
  {KEY_CRSR_RIGHT, 2, {91, 'C',   0, 0, 0, 0, 0, 0 }}, // Cursor Right
  {KEY_CRSR_LEFT,  2, {91, 'D',   0, 0, 0, 0, 0, 0 }}, // Cursor Left
  {KEY_HOME,       3, {91, '1', '~', 0, 0, 0, 0, 0 }}, // Home
  {KEY_INSERT,     3, {91, '2', '~', 0, 0, 0, 0, 0 }}, // Insert
  {KEY_DELETE,     3, {91, '3', '~', 0, 0, 0, 0, 0 }}, // Delete
  {KEY_END,        3, {91, '4', '~', 0, 0, 0, 0, 0 }}, // End
  {KEY_PAGEUP,     3, {91, '5', '~', 0, 0, 0, 0, 0 }}, // Page Up
  {KEY_PAGEDOWN,   3, {91, '6', '~', 0, 0, 0, 0, 0 }}, // Page Down
  {255,            0, {0 ,   0,   0, 0, 0, 0, 0, 0 }}  // End of table
};

static bool mprintf_on = false;  			/*! if true, test debug is enabled */

// command table history
// below change from 50 to HISTORY_BUFFER_SIZE mkr
static char 	cmd_history[HISTORY_BUFFER_SIZE][MAX_TERMINAL_WIDTH];  /*! [list], [line input], could be linked list...  */
static int32 	cmd_histptr = 0;											/*! points to the currently selected cmd history */
static int32 	cmd_histptrMaxVal = 0;      					/*! restricts going through history cmd */
static int32	num_of_cmds_registered = sizeof(cmd_list)/sizeof(COMMAND);		/*! num_of_cmds_registered in the cmd_list[] */
static char 	*cmds[MAX_TERMINAL_WIDTH];						/*! holds pointers to cmd line strings */


/*!
******************************************************************************
** \fn int32 m_cli (void)
**
** \brief main cli loop
**
** \return	should not return but if it does, always 0.
**
*******************************************************************************/
int32 m_cli (void)
{
	char 		usercmd[MAX_TERMINAL_WIDTH] = { 0 }; /*! typed in by user */
	uint8 	bufidx = 0;   		/*! buffer index, cursor placement for usercmd. */
	char 		*name;          	/*! name of test who's help to list. */
	uint8 	c;								/*! c = lower 8 bits are for ascii char*/
	uint8 	s;								/*! s = upper relate to shift state. */
	
	if(num_of_cmds_registered > MAX_REGISTERABLE_COMMANDS)
	{
		//outstring("\nIncrease the value of MAX_REGISTERABLE_COMMANDS");
    while (1);
	}

	outstring( "\nWelcome\n" );
	
	memset ( usercmd, 0, MAX_TERMINAL_WIDTH );
	print_prompt();

	while ( 1 )
	{
		if ( keypressed() )
		{
			c = read_keyboard();

			//check if last space on the line, cannot go over this. 
			if ( ( c == KEY_BSPACE )  || ( bufidx >= MAX_TERMINAL_WIDTH ) )
			{
				back_space(&bufidx, usercmd );
      }
			else if ( c == KEY_RETURN )
			{
				do_command(&bufidx, usercmd );
			}
			else if ( ( c >= KEY_SPACE ) && ( c < 127 ) )
			{
				add_char(&bufidx, usercmd, c );
			}
			// cursor up moves history pointer
			else if ( c == KEY_CRSR_UP )
			{
				cursor_up( &bufidx, usercmd );
			}
			// cursor down moves history pointer
			else if ( c == KEY_CRSR_DOWN )
			{
				cursor_down( &bufidx, usercmd );
			}
			else if ( c == KEY_CRSR_LEFT )
			{
				cursor_left( &bufidx );
			}
			else if ( c == KEY_CRSR_RIGHT )
			{
				cursor_right( &bufidx, usercmd  );
			}
			else if ( c == KEY_TAB )
			{
				tab_search( &bufidx, usercmd );
			}
			else if (c == KEY_DELETE)
			{
				del_key(&bufidx, usercmd);
			}
			else
			{
			} 
			
    } // if keypressed()
  }

  return ( 0 );
}

/*!
******************************************************************************
** \fn static int32	list (uint32 a, char ** b)
**
** \brief Print list of registered functions
**
** \param [in]  a	:	not used
** \param [in]  b	:	not used
**
** \return	always 0.
**
*******************************************************************************/
static int32	list (uint32 a, char ** b)
{
	int8 i=0;
	
	outstring("\nName\thelp");
	outstring("\n");
	
	for(i=0; i<num_of_cmds_registered; i++)
	{
    //printf("\n%s:\n\t%s",cmd_list[i].cmd_name, cmd_list[i].cmd_help );

    	outstring("\n");
    	outstring( cmd_list[i].cmd_name );
    	outstring( cmd_list[i].cmd_help );    
	}
	
	return 0;
}

/*!
******************************************************************************
** \fn static int32 	general_help_print(uint32 a, char ** b)
**
** \brief Print out m-cli help info
**
** \param [in]  a	:	not used
** \param [in]  b	:	not used
**
** \return	always 0.
**
*******************************************************************************/
static int32 	general_help_print(uint32 a, char ** b)
{
  return 0;
}
/*
	printf ( "\n" );
	printf ( "\n * M-Cli application Documentation: Feature of this app and how to use it." );
	printf ( "\n *  " );
	printf ( "\n * Operation... " );
	printf ( "\n * includes; tab search, history." );
	printf ( "\n * -Commands cannot not go over one line, currently 78 char per line." );
	printf ( "\n *  " );
	printf ( "\n * Commands... " );
	printf ( "\n * 1-'list' To see the list of all registered tests, type " );
	printf ( "\n * 2-To run, type in function name and parameters 'nor_read 0 65535'" );
	printf ( "\n * 3-'man xxx' for help on a function.");
	printf ( "\n * 4-'mprintf_enable y' turns on a useable debug print or, 'mprintf_enable n' to disable and use the mprintf() just like printf() ");
	printf ( "\n * 5-'exit' To exit." );
  printf ( "\n * 6-'example_func' is a demo function, and will print out any arguments entered into it." );
#ifdef INC_UBASIC
  printf ( "\n * 7-'ub' To run that ubasic scripts." );
  printf ( "\n * 8-'list_uBasic_Programs' To run that." ); 
#endif
	printf ( "\n * " );
	
	return 0;
}
*/

/*!
******************************************************************************
** \fn static int32 	print_help_for_registered_cmd(uint32 a, char ** b)
**
** \brief prints the help for a registered command in cmd_list[]. just like 'man' in Linux.
**
** \return	always 0.
**
*******************************************************************************/
static int32 	print_help_for_registered_cmd(uint32 a, char ** b)
{
	uint32 cmd_idx = 0;

	cmd_idx = search_through_cmd_list( b[1] );
	if(cmd_idx == -1)
	{
		outstring("\nnot found");
		return -1;
	}
	outstring("\n");
  outstring(cmd_list[cmd_idx].cmd_help );
	
	return 0;
}


/*!
******************************************************************************
** \fn static uint8 read_keyboard(void)
**
** \brief read the keyboard and return either the ascii character or a value above 127 for ascii escape chars
**
** \return	Either the ascii character or a value above 127 for ascii escape chars, else 0 for unrecognised.
**
*******************************************************************************/
static uint8 read_keyboard(void)
{
  uint8 cmp[8]; // Hopefully the longest esc sequence!
  uint8 c;
  int32 i;
  int32 len;
  
  // Get char from stream
  c = uart_getchar();
  
  // If the char isnt escape then bail now
	
  if (c != 27) return(c);
  // If we got an escape then there may be more data
  // in the buffer (if the cursor keys etc have been
  // pressed, bail now if this is not the case.
  
	sleep(15);
  if (!uart_ischar()) return(c);
  
  // Ok, we know we've got an ESC and there is at
  // least one other key in the fifo (a good thing
  // to do at this point would be to peek the next
  // character and simply break out now if it wasn't 
  // '['. The only problem is that we can't do that
  // (well we could if we had an interrupt driven
  // UART with proper buffering but hey ho). For now
  // we'll just grab keys until there are no more and
  // try and match them in our table!
	
  memset(cmp, 0, sizeof(cmp));
  
  len = 0;
  while (uart_ischar())
  {
    cmp[len++] = uart_getchar();
    if (len == 8) break;
    sleep(20);
  }
  
  i = 0;
  while(ktable[i].newcode != 255)
  {
    if (memcmp(&cmp, &ktable[i].cmparray, 8) == 0)
    {
      return(ktable[i].newcode);
    }
    i++;
  }
  
  // No match found, just return 0
  
  return(0);
}


/*!
******************************************************************************
** \fn static int32 search_through_cmd_list( char *name)
**
** \brief search the in cmd_list[] for a name match.
**
** \param [in]  name	:	string to search for - also contains the prompt!
**
** \return	index in the cmd_list[] if match else (-1)
**
*******************************************************************************/
static uint8 search_through_cmd_list( char *name)
{
	uint8 i = 0;
	uint32 slen = 0; 			// string length of the registered command name
	uint32 cmd_slen = 0; 	// string length of the user command
	uint8 res = 0;
	
	slen = strlen(name);

	for( i=0; i<num_of_cmds_registered; i++)
	{
		cmd_slen = strlen( cmd_list[i].cmd_name );
		
		// name lengths must match
		if( cmd_slen == slen)
		{
			res = strncmp( cmd_list[i].cmd_name, name, cmd_slen);
			if( res == 0)
			{
				//match! return the index of the registered function
				return i;
			}
		}
	}
	
	// not in list
	return -1;
}

/*!
******************************************************************************
** \fn static void print_prompt( void )
**
** \brief clear the line, go to start of line, print prompt
**
*******************************************************************************/
static void print_prompt( void )
{
	outstring("\r");
	//clrline();
  //printf("%c[2K", 0x1b);
  outchar(0x1b);
  outstring("[2K");

  
  #if PC_VERSION
    printf ( "%s", PROMPT);
  #else
    outstring (PROMPT);
  #endif
}


/*!
******************************************************************************
** \fn static void cursor_right( uint32 	*bufidx, char *usercmd  )
**
** \brief move cursor right 
**
** \param [in]  bufidx	:	string buf index
** \param [in]  usercmd	:	cmd string
**
*******************************************************************************/
static void cursor_right( uint8 	*bufidx, char *usercmd  )
{
	int32 len;
	
	len = strlen ( usercmd );

	//ensure that the cursor does not go beyond the end of the string.
	if ( *bufidx < len )
	{
		//update bufidx
		(*bufidx)++;
		
		//move the cursor right by one
    #if PC_VERSION
      printf("%c[1C",0x1b);
    #else
      outchar(0x1b);
      outstring("[1C");
    #endif
	}
}

/*!
******************************************************************************
** \fn static void cursor_left( uint32 	*bufidx )
**
** \brief move cursor left 
**
** \param [in]  bufidx	:	string buf index
**
*******************************************************************************/
static void cursor_left( uint8 *bufidx )
{
	int32 y;
	
	//check if the usercmd index is not in the 0 index position
	if ( *bufidx > 0 )
	{
		//decrement the usercmd pointer, bufidx.
		(*bufidx)--;
		
		//move the cursor left by one
    #if PC_VERSION
      printf("%c[1D",0x1b);
    #else
      outchar(0x1b);
      outstring("[1D");
    #endif
	}
}


/*!
******************************************************************************
** \fn static void cursor_up( uint32 	*bufidx, char *usercmd  )
**
** \brief move cursor up
**
** \param [in]  usercmd	:	cmd string
** \param [in]  bufidx	:	string buf index
**
*******************************************************************************/
static void 	cursor_up( uint8 *bufidx, char *usercmd )
{
	//decrement history pointer if possible
	if ( cmd_histptr > 0 )
	{
		cmd_histptr--;
	}
	
	// if no history
	if ( cmd_histptr == cmd_histptrMaxVal )
	{
		print_prompt();
		return;
	}
	
	//copy history into usercmd buffer
	memset ( usercmd, 0, MAX_TERMINAL_WIDTH );
	strcpy ( usercmd, cmd_history[cmd_histptr] );
	
	//go to front of line, clear to end of line, empty usercmd.
	print_prompt();
	
	//print the history to screen.
  #if PC_VERSION
    printf ( "%s", cmd_history[cmd_histptr] );
  #else
    outstring (cmd_history[cmd_histptr] );
  #endif

	//update bufidx to end of usercmd buffer
	*bufidx = strlen ( usercmd );
}


/*!
******************************************************************************
** \fn static void cursor_down( uint32 	*bufidx, char *usercmd  )
**
** \brief move cursor down
**
** \param [in]  usercmd	:	cmd string
** \param [in]  bufidx	:	string buf index
**
*******************************************************************************/
static void 	cursor_down( uint8 *bufidx, char *usercmd )
{
	// history pointer cannot be greater than max number of inputted commands so far.
	if ( cmd_histptr >= cmd_histptrMaxVal )
	{
		memset ( usercmd, 0, MAX_TERMINAL_WIDTH );
		print_prompt();
		*bufidx=0;
	}
	else if ( cmd_histptr == cmd_histptrMaxVal-1 )
	{
		cmd_histptr++;
		memset ( usercmd, 0, MAX_TERMINAL_WIDTH );
		print_prompt();
		*bufidx=0;
	}
	else
	{
		//increment history pointer and print the history to screen.
		cmd_histptr++;
		memset ( usercmd, 0, MAX_TERMINAL_WIDTH );
		
		print_prompt();
    #if PC_VERSION
      printf ( "%s", cmd_history[cmd_histptr] );
    #else
      outstring (cmd_history[cmd_histptr] );
    #endif
		
		//copy history into usercmd buffer, and update the usercmd bufidx to point to the end of the buffer
		strcpy ( usercmd, cmd_history[cmd_histptr] );
		
		//update string length
		*bufidx = strlen ( usercmd );
	}
	
}

/*!
******************************************************************************
** \fn static	void	add_to_history(char *usercmd)
**
** \brief add string to the cmd_history[]
** 
** \param [in]  usercmd	:	cmd string
**
*******************************************************************************/
static	void	add_to_history(uint8 *bufidx, char *usercmd)
{	
	uint32 res = 0;
	
 	res = check_if_blank_string( bufidx, usercmd);
	if( res == 1)
	{
		return;
	}
	
	remove_whitespace_tail( bufidx, usercmd);
	
	// if adding to tail / start ..
	if( cmd_histptr == cmd_histptrMaxVal)
	{
		//new entry at bottom of cmd_history[]
		strcpy ( &cmd_history[cmd_histptrMaxVal][0], usercmd );
		cmd_histptrMaxVal++;
		cmd_histptr++;
	}
	// if in middle of list
	else if(cmd_histptr < cmd_histptrMaxVal)
	{
		strcpy ( &cmd_history[cmd_histptrMaxVal][0], usercmd );
		cmd_histptrMaxVal++;
		cmd_histptr = cmd_histptrMaxVal;
	}
	// if cursored up then cursored down below last history position...
	else if(cmd_histptr > cmd_histptrMaxVal)
	{
		cmd_histptrMaxVal = cmd_histptr;
		strcpy ( &cmd_history[cmd_histptrMaxVal][0], usercmd );
		cmd_histptrMaxVal++;
		cmd_histptr++;
	}
	else
	{
		outstring("\n could not add to history");
	}
	
	//wrap around HISTORY_BUFFER_SIZE values
	cmd_histptr &= HISTORY_BUFFER_SIZE;
	cmd_histptrMaxVal &= HISTORY_BUFFER_SIZE;
}

/*!
******************************************************************************
** \fn static void back_space( uint8 *bufidx, char *usercmd )
**
** \brief removes char from usercmd[]
**
** \param [in/out]  bufidx	:	string buf index
** \param [in/out]  usercmd	:	cmd string
**
*******************************************************************************/
static void back_space( uint8 *bufidx, char *usercmd )
{
	int32 len;

	//if there are character to delete then...
	if ( *bufidx > 0 )
	{
		len = strlen ( usercmd );

		//shift to the left the array,
		memcpy ( &usercmd[*bufidx - 1], &usercmd[*bufidx], len - *bufidx + 1 );

		//clear the line, and go to start of line, print the new string
		print_prompt();
    #if PC_VERSION
      printf ( "%s", usercmd );
    #else
      outstring (usercmd );
    #endif

		//update bufidx, replace cursor
		(*bufidx)--;
		
		outstring("\r");
    #if PC_VERSION
      printf("%c[%dC",0x1b, *bufidx + PROMPT_SIZE);
    #else
      outchar(0x1b );
      outchar('[');
      outhex8( (*bufidx + PROMPT_SIZE) ); // mkr string
      outchar('C');
    #endif
		
	}
}


/*!
******************************************************************************
** \fn static void del_key( uint8 *bufidx, char *usercmd )
**
** \brief removes char from usercmd[]
**
** \param [in/out]  bufidx	:	string buf index
** \param [in/out]  usercmd	:	cmd string
**
*******************************************************************************/
static void del_key( uint8 *bufidx, char *usercmd )
{
	int32 len;

	len = strlen ( usercmd );

	//shift to the left the array, print the new string
	memcpy ( &usercmd[*bufidx], &usercmd[*bufidx + 1], len - *bufidx );
	
	//clear the line, re-print prompt, and usercmd
	print_prompt();
  #if PC_VERSION
    printf ( "%s", usercmd );
  #else
    outstring (usercmd );
  #endif

	//replace the cursor	
	outstring("\r");
  #if PC_VERSION
    printf("%c[%dC",0x1b, *bufidx + PROMPT_SIZE);
  #else
    outchar (0x1b );
    outchar('[');
    outhex8( (*bufidx + PROMPT_SIZE) );
    outchar('C');
  #endif	
  
}


/*!
******************************************************************************
** \fn static void parse_cmd_line( uint8 *bufidx, char *usercmd, int32 *argc )
**
** \brief parses cmd line input and splits up like vaargs. global cmds[] hold pointers to the strings, stores string in cmds[]
**
** \param [in/out]  bufidx	:	string buf index
** \param [in/out]  usercmd	:	cmd string
** \param [in/out]  argc		:	total num of args in the cmd string
**
*******************************************************************************/
static void parse_cmd_line( uint8 *bufidx, char *usercmd, int32 *argc )
{
	int32 idx = 0;	
	char 	c;						// char to inspect
	int32 len = 0;			// length of original string
	
	memset(cmds, 0, MAX_TERMINAL_WIDTH );
	*argc = 0;	
	len = strlen(usercmd);
	
	while(1)
	{
		// find start of string
		c = usercmd[idx];
		while(c <= 32)
		{
			idx++;
			c = usercmd[idx];
			
			// if at end of string then break
			if (idx >= len)
			{
				return;
			}
		}
		
		// store string in cmds[]
		cmds[*argc] = &usercmd[idx];
		(*argc)++;
		
		//find end of the same string
		c = usercmd[idx];
		
		while(c > 32)
		{
			idx++;
			c = usercmd[idx];
		}
		
		//put null after that string
		usercmd[idx] = '\0';
		
		//if next char is null assume end of string
		if( usercmd[idx+1] == NULL )
		{
			break;
		}
	}
	
}

/*!
******************************************************************************
** \fn static void do_command( uint8 *bufidx, char *usercmd )
**
** \brief adds to history buf, search through cmd_list[], runs function if in the registered list
**
** \param [in/out]  bufidx	:	string buf index
** \param [in/out]  usercmd	:	cmd string
**
*******************************************************************************/
static void do_command( uint8 *bufidx, char *usercmd )
{
	int32 res = 0;
	int32 argc = 0;			/*! num of cmd line args	*/
	int32 cmdres = 0;   /*! result after running the cmdfunc.	*/
	
	//find length of string
	*bufidx = strlen ( usercmd );
	
	//process string
	if ( *bufidx > 0)
	{		
		//append null terminator.
		usercmd[*bufidx] = 0;
		
		add_to_history( bufidx, usercmd);
		
		// find individual strings and put pointers into cmds[]
		parse_cmd_line( bufidx, usercmd, &argc );
		
		res = search_through_cmd_list( cmds[0] );
		
		if(  res == -1 )
		{
			outstring("\nnot be found");
		}
		else
		{
			// run function
			cmdres = cmd_list[res].cmdfunc ( argc, cmds );
			mprintf("\ncmdres = [%d]", cmdres);
			
			if (cmdres == -1 )
			{
				outstring("\nError");
			}
			
		}
	}
	
	outstring("\n");
	memset ( usercmd, 0, MAX_TERMINAL_WIDTH );
	*bufidx = 0;
	print_prompt();

}


/*!
******************************************************************************
** \fn static void	add_char( uint8 *bufidx, char *usercmd, char c )
**
** \brief adds char to usercmd[]
**
** \param [in/out]  bufidx	:	string buf index
** \param [in/out]  usercmd	:	cmd string
**
*******************************************************************************/
static void	add_char( uint8 *bufidx, char *usercmd, char c )
{
	int32 len;
	
	len = strlen ( usercmd );

	//if a char is being inserted between other chars
	if ( *bufidx < len )
	{
		// shift everything the from the end of the str to the insert index to the right by 1 place
		for ( ; len >= *bufidx; len-- )
		{
			usercmd[len + 1] = usercmd[len];
		}

		// insert the new char where the cursor is
		usercmd[*bufidx] = c;

		//reprint the string
		print_prompt();
    #if PC_VERSION
      printf ( "%s", usercmd );
    #else
      outstring (usercmd );
    #endif
		
		//increment the buffer counter
		*bufidx += 1;
		
		//replace cursor
		outstring("\r");
		#if PC_VERSION
      printf("%c[%dC",0x1b, *bufidx + PROMPT_SIZE);
    #else
      outchar (0x1b );
      outchar('[');
      outhex8 ( (*bufidx + PROMPT_SIZE) );
      outchar('C');
    #endif
	}
	else
	{
		//add to the usercmd the key. and print the char to the screen, update buffer.
		usercmd[*bufidx] = c;
		
    #if PC_VERSION
      printf ( "%c", c );
    #else
      outchar (c );
    #endif
		(*bufidx)++;
	}
}


/*!
******************************************************************************
** \fn 	static void	tab_search( uint8 *bufidx, char *usercmd )
**
** \brief looks through registered functions, and prints to screen
**
** \param [in/out]  bufidx	:	string buf index
** \param [in/out]  usercmd	:	cmd string
**
*******************************************************************************/
static void	tab_search( uint8 *bufidx, char *usercmd )
{
	uint32 slen = 0;
	uint32 num_of_matches = 0;
	uint8 i = 0;
	uint32 match_idx[MAX_REGISTERABLE_COMMANDS] = {0};
	uint8 str_start = 0;
	
	// skip any white space from front of terminal -to quicken strncmp() search only
	remove_whitespace_front( &str_start, usercmd );
	
	slen = strlen(&usercmd[str_start] ) ;
	
	// serach for a match
	for (i=0; i< num_of_cmds_registered; i++ )
	{		
		if( strncmp( cmd_list[i].cmd_name, &usercmd[str_start] , slen) == 0 ) //int strncmp(char *dst, char *src, uint32 len)
		{
			//log the idx of a match
			match_idx[num_of_matches++] = i;
		}		
	}
	
	// 
	if( num_of_matches == 0 )
	{
		return;
	}
	else if( num_of_matches == 1 )
	{
		//only one match, fill up the buf
		strcpy( &usercmd[0] , cmd_list[ match_idx[0] ].cmd_name );	
		*bufidx = strlen(usercmd);
		
		print_prompt();		
		#if PC_VERSION
      printf ( "%s", usercmd );
    #else
      outstring (usercmd );
    #endif
		
		return;
	}
	else if( num_of_matches > 1 )
	{
		// print out all options on screen
		outstring("\n");
		for(i=0; i<num_of_matches; i++)
		{
			//print max of 4 matches per line
      #if PC_VERSION
        printf("%s(),  ",  cmd_list[ match_idx[i] ].cmd_name  );
      #else
        outstring (cmd_list[ match_idx[i] ].cmd_name );
				outstring ("()" );
      #endif
      
			
			if( i%4 )
			{
				outstring("\n");
			}
		}
		
		//re place the original command 
		print_prompt();		
    #if PC_VERSION
      printf ( "%s", usercmd );
    #else
      outstring (usercmd );
    #endif
	}
	
}


/*!
******************************************************************************
** \fn 	static int32 check_if_blank_string(uint8 *bufidx, char *usercmd)
**
** \brief loop through command string and see if it is just full of spaces ie blank, we don't want to store a string of spaces
**
** \param [in/out]  bufidx	:	string buf index
** \param [in/out]  usercmd	:	cmd string
**
**	\return 0 for a useable string, else 1 for a blank string
**
*******************************************************************************/
static uint8 check_if_blank_string(uint8 *bufidx, char *usercmd)
{
	uint8 i = 0;
	uint8 space_count = 0;
	
	for( i=0; i<(*bufidx); i++)
	{
		if ( usercmd[i] == 0x20 )
		{
			space_count++;
		}
	}
	
	if( space_count == *bufidx  )
	{
		return 1;
	}
	
	return 0;
}


/*!
******************************************************************************
** \fn 	static int32 remove_whitespace_tail(uint8 *bufidx, char *usercmd)
**
** \brief remove white space from the end of a string
**
** \param [in/out]  bufidx	:	string buf index -- not used
** \param [in/out]  usercmd	:	cmd string
**
**	\return 0 for a useable string, else 1 for a blank string
**
*******************************************************************************/
static uint8 remove_whitespace_tail(uint8 *bufidx, char *usercmd)
{
	// start at end of string 
	// if white space null
	// go backwards until not space
	
	uint8 len = 0;
	char c;
	
	len = strlen(usercmd) - 1;
	
	c = usercmd[len];
	
	while( (c == 0x20) && (len > 0) )
	{
		usercmd[len] = NULL;
		len--;
		c = usercmd[len];
	}
}


/*!
******************************************************************************
** \fn 	static int32	remove_whitespace_front( uint8 *bufidx, char *usercmd )
**
** \brief remove white space from the front of a string
**
** \param [in/out]  str_start	:	point to the start of the string, ignoring any space chars
** \param [in/out]  usercmd	:	cmd string to investigate
**
**	\return 0 for , else 1 for 
**
*******************************************************************************/
static uint8	remove_whitespace_front( uint8 *str_start, char *usercmd )
{
	*str_start = 0;
	
	while( usercmd[*str_start] == 0x20)
	{
		(*str_start)++;
	}
}


/*!
 ******************************************************************************
 **
 ** \fn static int32 mprintf_enable(uint32 a , char **b)
 **
 ** \brief turns on a useable debug print. type at cli 'mprintf_enable y' or, 'mprintf_enable n' and use the mprintf() just like printf();
 **
 ** \returns  The return status. 0 indicates the function was
 **           successful, all other codes denote an error.
 **
 *****************************************************************************/
static int32 mprintf_enable(uint32 a , char **b)
{
	//char c = *b;
  char c;
	
	if( c == 'y' )
	{
		//turn on
		mprintf_on = true;
		outstring("mprintf enabled\n");
	}
	else if ( c == 'n' )
	{
		//turn off
		mprintf_on = false;
		outstring("mprintf disabled\n");
	}
	else
	{
    #if PC_VERSION
      printf("not recognised. please run again. mprintf state == [%d]\n", mprintf_on );
    #else
      outstring ("not recognised" );
      outchar(mprintf_on);
      outstring("\n");
    #endif
	}
	
	return 0;
}


/*!
 ******************************************************************************
 **
 ** \fn int32 int32 mprintf( char* fmt,... )
 **
 ** \brief wrapper for printf, disabled if global mprintf_on == false, to enable it run 'mprintf_enable y'
 **
 ** \param [in]  char* fmt : Use just like printf()
 **
 ** \returns  The return status. 0 indicates the function was
 **           successful, all other codes denote an error.
 **
 *****************************************************************************/
int32 mprintf( char* fmt,... )
{
	// va_list args;
	// va_start(args, fmt);
  // 
	// if(mprintf_on == true) vprintf(fmt, args);
  // 
	// va_end(args);
	// 
	// return 0;	
}



/*!
 ******************************************************************************
 **
 ** \fn static int32	exit (uint32 a, char ** b)
 **
 ** \brief uint32 a, char ** b
 **
 ** \param [in]  a        : 
 ** \param [in]  **b fmt  : 
 **
 ** \returns  The return status. 0 indicates the function was
 **           successful, all other codes denote an error.
 **
 *****************************************************************************/
static int32	exit (uint32 a, char ** b)
{
	outstring("\nThis is exit, but we won't...");
	return 0;
}


/*
*	Dummy function
*/
static int32 example_func(uint32 a , char **b)
{
	uint8 i=0;
	
	//printf("\nThis is oexample_func, args total  = %d", a);
	for(i=0; i<a; i++)
	{
    #if PC_VERSION
      printf("\ninput string is [%s]", b[i]);
    #else
      outstring("\nstring is ");
      outstring(b[i]);
    #endif
	}
	return 0;
}



/*!
******************************************************************************
** \fn static bool keypressed(void)
**
** \brief Check uart to see if keypressed
**
** \return	true else false if no char  .
**
*******************************************************************************/
static bool keypressed(void)
{
	//if (ischar != NULL) // was _ischar
  if (ischar != 0) // was _ischar
  {
    return(ischar()); // was _ischar
  }
  else
  {
    return(false);
  }
}




#endif /* __M_CLI_C__ */
