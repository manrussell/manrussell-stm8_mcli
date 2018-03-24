
#include "mlib.h"

// --------------------------------------------------------------------------
//|                          Memory copy/fill and compare                    |
// --------------------------------------------------------------------------

/*
// --------
//| MEMCPY |
// --------

#ifdef USE_C_MEMCPY
void *memcpy(void* dst, void* src, uint32 len)
{
  uint8* s = (uint8*)src;
  uint8* d = (uint8*)dst;
  #ifdef NULL_POINTER_CHECK
  if (!d)
  {
    printf("SOMEONE is trying to write %d bytes from %08x to address 0!!!!   ", len, src);
    while(1);
  }  
  #endif
  while(len--) *d++ = *s++;
  return(dst);
}
#endif


// ---------
//| MEMMOVE |
// ---------

void *memmove(void* dst, void* src, uint32 len)
{
  uint8* s = (uint8*)src;
  uint8* d = (uint8*)dst;
  uint8* e = s + len;

  #ifdef NULL_POINTER_CHECK
  if (!d)
  {
    printf("SOMEONE is trying to write %d bytes from %08x to address 0!!!!   ", len, src);
    while(1);
  }  
  #endif
  
  // Backwards copy?

  if ((d >= s) && (d <= e))
  {
    d += len;
    s += len;
    while (len--) *--d = *--s;
  }
  else
  {
    while(len--) *d++ = *s++;
  }
  return(dst);
}
*/

// --------
//| MEMSET |
// --------

#ifdef USE_C_MEMSET
void *memset(void* dst, uint8 fill, uint32 len)
{
  uint8* d = (uint8*)dst;
  #ifdef NULL_POINTER_CHECK
  if (!d)
  {
    printf("SOMEONE is trying to write %d bytes of %02x to address 0!!!!   ", len, fill);
    while(1);
  }
  #endif  
  while(len--) *d++ = fill;
  return(dst);
}
#endif

/*

// ------------
//| MEMCOMPARE |
// ------------

// Not a standard function, returns TRUE if buffers match

bool memcompare(void* src, void* dst, uint32 len)
{
  uint8* s = (uint8*)src;
  uint8* d = (uint8*)dst;
  while(len--)
  {
    if (*d++ != *s++) return(false);
  }
  return(true);
}


// --------
//| MEMCMP |
// --------

int32 memcmp(void* src, void* dst, uint32 len)
{
  uint8 *p1;
  uint8 *p2;

  // bail if length is zero

  if (len == 0) return (0);

  // compare array 2 with array 1

  p1 = (uint8*) src;
  p2 = (uint8*) dst;

  while (*p1++ == *p2++)
  {
    if (--len == 0) return(0);
  }
  return ((*--p1) - (*--p2));
}


// --------
//| MEMCHR |
// --------

void *memchr(void* src, int c, uint32 len)
{
  uint8 *p1;
  uint8 ch;

  p1 = (uint8*) src;
  ch = (uint8) c;

  while (len && (*p1 != ch))
  {
    p1++;
    len--;
  }
  return (len ? (void *) p1 : NULL);
}


// --------------------------------------------------------------------------
//|                                 String Functions                         |
// --------------------------------------------------------------------------

// --------
//| STRLEN |
// --------

uint32 strlen(char* s)
{
  uint32 l = 0;
  while(*s++ != 0) l++;
  return(l);
}


#ifndef NO_PLIBC_STRINGFUNCS

// --------
//| STRCPY |
// --------

char *strcpy(char *dst, char *src)
{
  char *d = dst;

  while (*src)
  {
    *d++ = *src++;
  }

  *d = 0;

  return(dst);
}


// ---------
//| STRNCPY |
// ---------

char *strncpy(char *dst, char *src, uint32 len)
{
  char *d = dst;

  while (*src && (len > 0))
  {
    *d++ = *src++;
    len--;
  }

  if (len > 0)
  {
    *d = 0;
  }

  return(dst);
}


// --------
//| STRCAT |
// --------

char *strcat(char *dst, char *src)
{
  char *d = dst;

  while (*d) d++;
  while (*src) *d++ = *src++;
  *d = 0;

  return(dst);
}


// --------
//| STRDUP |
// --------
#define NO_PLIBC_MALLOC
#ifndef NO_PLIBC_MALLOC

char *strdup(char *s)
{
  // char *b = (char*) malloc(strlen(s) + 1);

  // if (b)
  // {
    // strcpy(b,s);
  // }

  // return(b);
}

#endif


// --------
//| STRCMP |
// --------

int strcmp(char *dst, char *src)
{
  for (;;dst++,src++ )
  {
     if (*dst < *src) return(-1);
     if (*dst > *src) return(1);
     // *dst == *src - are we at end of string
     if (*dst == 0) return(0);     // they match
  }
}


// ---------
//| STRNCMP |
// ---------

int strncmp(char *dst, char *src, uint32 len)
{
  for (;len ;dst++,src++,len-- )
  {
     if (*dst < *src) return(-1);
     if (*dst > *src) return(1);
     // *dst == *src - are we at end of string
     if (*dst == 0) return(0);     // they match
  }
  return(0);   // match up required point
}


// ---------
//| STRICMP |
// ---------

int stricmp(char *dst, char *src)
{
  for (;;dst++,src++ )
  {
     char d = toupper(*dst);
     char s = toupper(*src);
     if (d < s) return(-1);
     if (d > s) return(1);
     // d == s - are we at end of string
     if (d == 0) return(0);     // they match
  }
}


// --------
//| STRCHR |
// --------

char *strchr(char *dst,int c)
{
  while (*dst)
  {
    if (*dst == c)
    {
      return ((char*) dst);
    }
    dst++;
  }

  return(NULL);
}


// --------
//| STRSTR |
// --------

char *strstr(char *dst, char *find)
{
  char  *s = (char*) dst;
  char  c, sc;
  uint32 len;

  if ((c = *find++) != 0)
  {
    len = strlen(find);
    do
    {
      do
      {
        if ((sc = *s++) == 0)
        {
          return(NULL);
        }
      }
      while (sc != c);
    }
    while (strncmp(s, find, len) != 0);
    s--;
  }
  return(s);
}


// ---------
//| STRNCHR |
// ---------

char *strnchr(char *dst, uint32 len, char c)
{
  while (*dst && (--len))
  {
    if (*dst == c) return((char*) dst);
    dst++;
  }
  return(NULL);
}


// --------
//| STRCHR |
// --------

char *strrchr(char *dst,int c)
{
  char *ret = NULL;

  while (*dst)
  {
    if (*dst == c) ret = ((char*) dst);
    dst++;
  }

  return(ret);
}


// ---------
//| TOUPPER |
// ---------

char toupper(char c)
{
  if ((c >= 'a') && (c <= 'z')) c -= 32;
  return(c);
}


// ---------
//| TOLOWER |
// ---------

char tolower(char c)
{
  if ((c >= 'A') && (c <= 'Z')) c += 32;
  return(c);
}


// --------
//| STRUPR |
// --------

char *strupr(char *s)
{
  while (*s)
  {
    *s = toupper(*s);
    s++;
  }
  return (s);
}


// --------
//| STRLWR |
// --------

char *strlwr(char *s)
{
  while (*s)
  {
    *s = tolower(*s);
    s++;
  }
  return (s);
}


// ------
//| ATOI |
// ------

int32 atoi(char *s)
{
  int32 r;

  if (string_to_uint32(s, (uint32*)&r))
  {
    return(r);
  }
  else
  {
    return(0);
  }
}


// ------
//| ATOUI |
// ------

uint32 atoui(char *s)
{
  uint32 r;

  if (string_to_uint32(s, (uint32*)&r))
  {
    return(r);
  }
  else
  {
    return(0);
  }
}


// ------------------
//| String to UINT32 |
// ------------------

// Returns false if any parsing error

bool string_to_uint32(char* s, uint32 *res)
{
  // Locals

  uint32  shifts[8]={0,4,8,12,16,20,24,28};
  uint32  mults[10]={1,10,100,1000,10000,100000,1000000,10000000,100000000,1000000000};
  uint32  sl;
  uint32  i,j;
  uint32  c;
  bool    hex;
  bool    neg;

  // Bail if string or result pointer is NULL

  if (!s)   return(false);
  if (!res) return(false);

  // Clear result

  *res = 0;

  // Any chars??

  sl =  strlen(s);

  // Strip any whitespace from the start

  for (i = 0; i < sl; i++)
  {
    if (s[i] > 32) break;
  }

  s += i;
  sl -= i;

  if (sl == 0) return(false);

  // Strip any whitespace from the end

  i = 0;
  for (j = sl; j != 0; j--)
  {
    if (s[j - 1] > 32) break;
    i++;
  }
  sl -= i;

  if (sl == 0) return(false);

  // Check for Negative and Hexadecimal

  hex = neg = false;

  if (s[0] == '-')
  {
    neg = true;
    s++;
    sl--;
  }

  if ((s[0] == '0') && ((s[1] == 'x') || (s[1] == 'X')))
  {
    hex = true;
    s  +=2;
    sl -=2;
  }

  // Check not too many characters

  if ((hex) && (sl > 8))
  {
    return(false);
  }
  else
  {
    if (sl > 10)
    {
      return(false);
    }
  }

  // Convert

  for (i = 0; i < sl; i++)
  {
    // Grab char, force lowercase

    c = s[i] | 32;

    // Translate

    if ((c >= '0') && (c <= '9'))
    {
      c -= 48;
    }
    else
    {
      if (hex && ((c >= 'a') && (c <= 'f')))
      {
        c -= 87;
      }
      else
      {
        return(false);
      }
    }
    if (hex)
    {
      *res += c << shifts[sl - (i + 1)];
    }
    else
    {
      *res += c * mults[sl - (i + 1)];
    }
  }

  // Negate if required

  if (neg)
  {
    *res ^= 0xffffffff;
    *res += 1;
  }

  // Return Success

  return(true);
}

#endif // #ifndef NO_PLIBC_STRINGFUNCS


// --------------------------------------------------------------------------
//|                              Maths Functions                             |
// --------------------------------------------------------------------------

// -----
//| ABS |
// -----

int32 abs(int32 val)
{
  if (val < 0)
  {
    return(0 - val);
  }
  else
  {
    return(val);
  }
}
*/
