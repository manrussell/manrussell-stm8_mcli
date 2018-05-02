# manrussell-stm8_mcli

I am porting a command line interface I wrote to an STM8S103F board as they are cheap! but also small.
I started with a cli that worked on larger 32bit micro's with lots of flash I wanted to get it working on smaller 8 bit micro's. 
So, while the initial commit might be fine for your purpose i had to optimise lots of the cli to even fit on this micro.

## Getting started

So while the c code is portable to any microcontroller, you may need to disable some of the infrastructure of the cli,
ie you can enable/ disable using this define in m_cli.c

#define INCLUDE_TAB_SEARCH  false

#define INCLUDE_HISTORY     false

#define INCLUDE_M_PRINTF    false

#define INCLUDE_HELP_INFO   false

you will also have to alter these functrions to suit your microcontroller

u8 ischar(void);

u8 readchar(void);

void outchar(char c);

void uart_init(void);

## Prerequists

I used STVD for an ide

I used cosmic compiler 

see future blog post https://wordpress.com/post/diyelectronicsandmusic

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
