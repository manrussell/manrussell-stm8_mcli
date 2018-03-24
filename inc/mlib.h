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
 
#ifndef __MLIB_H__
#define __MLIB_H__

// types
#define uint8  		unsigned char
#define uint16  	unsigned short
#define uint32  	unsigned long
#define uint64    unsigned long long

#define int8  		char
#define int16  		short
#define int32  		long
#define int64   	long long

#define NULL      (0)
#define false     0
#define true      1
#define bool      unsigned char


typedef unsigned char           u8;     // unsigned 8 bit type definition  
typedef signed char             s8;     // signed 8 bit type definition    
typedef unsigned short          u16;    // unsigned 16 bit type definition 
typedef signed short            s16;    // signed 16 bit type definition   
typedef unsigned long           u32;    // unsigned 32 bit type definition 
typedef signed long             s32;    // signed 32 bit type definition
typedef volatile unsigned long  vu32;
typedef volatile unsigned short vu16;
typedef volatile unsigned char  vu8;


// Sizes

#ifndef KILO
#define KILO      1024
#define MEGA      (1024*KILO)
#define GIGA      (1024*MEGA)
#endif

#if 1
 #define DBUG_MSG(x)
 #define DBUG_ERROR(x)
#else
 #define DBUG_MSG(x)       printf x
 #define DBUG_ERROR(x)     printf x
#endif

//  Macros 

#define EnableInterrupts()  {_asm ("RIM");}
#define DisableInterrupts() {_asm ("SIM");}
#define PushCC()            {_asm ("PUSH CC");}
#define PopCC()             {_asm ("POP CC");}
#define SetBit(VAR,Place)   (VAR |= (1<<(Place)))
#define ClrBit(VAR,Place)   (VAR &= ((1<<(Place))^255))
#define ValBit(VAR,Place)   (VAR & (1<<(Place)))
#define m32(nn)             *((vu32*)(nn)) 
#define m16(nn)             *((vu16*)(nn)) 
#define m8(nn)              *((vu8*) (nn))  



// ------------
//| Prototypes |
// ------------

// Memory copy, fill and compare

void    *memcpy(void* dst, void* src, uint32 len);
void    *memcpy128_r(void* dst, void* src, uint32 len);
void    *memmove(void* dst, void* src, uint32 len);
void    *memset(void* dst, uint8 fill, uint32 len);
int32   memcmp(void* src, void* dst, uint32 len);
bool    memcompare(void* src, void* dst, uint32 len);
void    *memchr(void* src, int c, uint32 len);

// String functions

uint32  strlen(char* s);
uint32  strnlen(char* s, uint32 len);
char    *strcpy(char *dst, char *src);
char    *strncpy(char *dst, char *src, uint32 len);
char    *strcat(char *dst, char *src);
char    *strdup(char *s);
int     strcmp(char *dst, char *src);
int     strncmp(char *dst, char *src, uint32 len);
int     stricmp(char *dst, char *src);
int     strcasecmp(char *dest, char *src);
char    *strchr(char *dst,int c);
char    *strstr(char *dst, char *find);
char    *strnchr(char *dst, uint32 len, char c);
char    *strrchr(char *dst,int c);
char    toupper(char c);
char    tolower(char c);
char    *strupr(char *s);
char    *strlwr(char *s);
int32   atoi(char *s);
uint32  atoui(char *s);
bool    string_to_uint32(char* s, uint32 *res);

// Maths functions

int32   abs(int32 val);

#endif /* __MLIB_H__ */

