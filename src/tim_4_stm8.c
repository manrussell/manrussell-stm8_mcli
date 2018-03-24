#ifndef __TIM_4_C__
#define __TIM_4_C__

#include "tim_4_stm8.h"


u32 volatile 	tim4_tick = 0; 			// used by delay function 

// --------------------
//| Initialise Timer 4 |
// --------------------

void TIM4_timer_init(void)
{
  // Init Timer 4 at 1000Hz, interrupt enabled
    /* TIM4 configuration:
   - TIM4CLK is set to 16 MHz, the TIM4 Prescaler is equal to 128 so the TIM1 counter
   clock used is 16 MHz / 128 = 125 000 Hz
  - With 125 000 Hz we can generate time base:
      max time base is 2.048 ms if TIM4_PERIOD = 255 --> (255 + 1) / 125000 = 2.048 ms
      min time base is 0.016 ms if TIM4_PERIOD = 1   --> (  1 + 1) / 125000 = 0.016 ms
  - In this example we need to generate a time base equal to 1 ms
   so TIM4_PERIOD = (0.001 * 125000 - 1) = 124 */
  
  #if CLOCKMHZ==8
    TIM4_PSCR = 0x06;     // Prescaler = 64
  #else
    TIM4_PSCR = 0x07;     // Prescaler = 128
  #endif
  
  TIM4_ARR  = 125 - 1;  // Period = 125
  //TIM4_CR1  = 0x01;     // Enable TIM4 counter
  TIM4_IER  = 0x01;     // Enable TIM4 Update Interrupt
  

}


/**/
void 	TIM4_StartTimer(void)
{
  TIM4_CR1  = 0x01;
}

/**/
void 	TIM4_StopTimer(void)
{
  TIM4_CR1  = 0x0;
}


/**/
void 	TIM4_delay_ms(u32 ms)
{
	tim4_tick = 0;

	TIM4_CR1  = 0x01;     // Enable TIM4 counter
	while( tim4_tick < ms){	};
	TIM4_CR1  = 0x0;     // Disable TIM4 counter
}


// ----------------
//| 1Khz Interrupt |
// ----------------
vu8 led = 0x0;

@far @interrupt void TIM4_Timebase_Interrupt(void)
{
	tim4_tick++;
  TIM4_SR = 0x00;   //  Clear interrupt flag
}


/*
  \fn TIM4_GetTickCount
  \param Handle timer 4
  \param Tick

*/
u8 TIM4_GetTickCount(u8 Handle, u32 *Tick)
{
  //if(!system_init)
  //{
  //  return 1;
  //}
  
  //check handle range
  //bail if not opened
  //bail if not started
  
  if (Tick == NULL)
  {  
    return(1);
  }
  
  //set the tick
  *Tick = tim4_tick;

  return 0;  
}


u8 TIM4_SetTickCount(u8 Handle, u32 Tick)
{
  //if(!system_init)
  //{
  //  return 1;
  //}
  
  //chacek handle range
  //bail if not started
  
  //set the tick
  tim4_tick = Tick;
  return 0;
}



void sleep( u32 ms)
{
  TIM4_timer_init();
  TIM4_delay_ms(ms);
  TIM4_StopTimer();
} 

//u8 TIM4_GetBaseRateuSec(u32 *Rate);
//u8 TIM4_GetBaseRateuSec(u32 *Rate)
//{
    //TIM4_TimeBaseInit(TIM4_PRESCALER_128, TIM4_PERIOD);
//}

//u8 TIM4_GetMasterTickCount(u32 *Tick);

#endif //__TIM_4_C__
