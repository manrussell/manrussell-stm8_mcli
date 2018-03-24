#ifndef __TIM_4_H__
#define __TIM_4_H__

#include "STM8S103F3.h"
#include "mlib.h"

void  TIM4_timer_init(void);
void 	TIM4_delay_ms(u32 ms);
void 	TIM4_StopTimer(void);
void 	TIM4_StartTimer(void);
u8 TIM4_GetTickCount(u8 Handle, u32 *Tick);
u8 TIM4_SetTickCount(u8 Handle, u32 Tick);
void sleep( u32 ms);

//BLI_ERRORCODE BLI_TIM_Init(BLI_TIM_InitParam *InitParam);
//
///*!
//******************************************************************************
//**
//** \fn BLI_ERRORCODE BLI_TIM_Shutdown(BLI_VOID)
//**
//** \brief    Shuts down the timer device.
//**
//** \returns  The return status. BLI_RETURN_OK indicates the function was
//**           successful, all other codes denote an error.
//**
//*****************************************************************************/
//BLI_ERRORCODE BLI_TIM_Shutdown(BLI_VOID);
//
///*!
//******************************************************************************
//**
//** \fn BLI_ERRORCODE BLI_TIM_GetBaseRateuSec(BLI_UINT32 *Rate)
//**
//** \brief    Retrieves the base rate of the timer device (in uSec)
//**
//** \param    *Rate Holds the current timer rate
//**
//** \returns  The return status. BLI_RETURN_OK indicates the function was
//**           successful, all other codes denote an error.
//**
//*****************************************************************************/
//BLI_ERRORCODE BLI_TIM_GetBaseRateuSec(BLI_UINT32 *Rate);
//
///*!
//******************************************************************************
//**
//** \fn BLI_ERRORCODE BLI_TIM_GetMasterTickCount(BLI_UINT32 *Tick)
//**
//** \brief    Retrieves the internal tick count, this increments even if no
//**           user timers are active, to retireve the tick rate call the
//**           BLI_TIM_GetBaseRateuSec function.
//**
//** \param    *Tick  Holds the current tick count
//**
//** \returns  The return status. BLI_RETURN_OK indicates the function was
//**           successful, all other codes denote an error.
//**
//*****************************************************************************/
//BLI_ERRORCODE BLI_TIM_GetMasterTickCount(BLI_UINT32 *Tick);
//
///*!
//******************************************************************************
//**
//** \fn BLI_ERRORCODE BLI_TIM_OpenTimer(BLI_TIM_Handle *Handle)
//**
//** \brief    Opens a timer, after opening the timer is inactive (you should
//**           call BLI_TIM_SetTimer to set the required mode)
//**
//** \param    *Handle  Holds the returned handle
//**
//** \returns  The return status. BLI_RETURN_OK indicates the function was
//**           successful, all other codes denote an error.
//**
//*****************************************************************************/
//BLI_ERRORCODE BLI_TIM_OpenTimer(BLI_TIM_Handle *Handle);
//
///*!
//******************************************************************************
//**
//** \fn BLI_ERRORCODE BLI_TIM_CloseTimer(BLI_TIM_Handle Handle)
//**
//** \brief    Closes the specified timer.
//**
//** \param    Handle  Handle of the timer to close
//**
//** \returns  The return status. BLI_RETURN_OK indicates the function was
//**           successful, all other codes denote an error.
//**
//*****************************************************************************/
//BLI_ERRORCODE BLI_TIM_CloseTimer(BLI_TIM_Handle Handle);
//
///*!
//******************************************************************************
//**
//** \fn BLI_ERRORCODE BLI_TIM_StartTimer(BLI_TIM_Handle Handle, BLI_UINT32 Mode, BLI_UINT32 Target, BLI_VOID *cbeAddr);
//**
//** \brief    Starts a timer (either in Oneshot or periodic mode), Also resets the timer 'tick' to 0
//**
//** \param    Handle    Handle of the timer to set
//** \param    Mode      Controls oneshot/periodic and the action to take when the
//**                     timer expires (see the defines above)
//** \param    Rate      Increment tick count after this many microseconds, Note that
//**                     the accuracy of the timing decreases as the rate increases
//**                     (ie the timer ticks less often)
//** \param    *cbeAddr  Address of the callback function (mode =  BLI_TIM_MODE_CALLBACK)
//**                     or or the variable to setto TRUE when the Target is reached
//**                     (mode = BLI_TIM_MODE_SETEVENT)
//**
//** \returns  The return status. BLI_RETURN_OK indicates the function was
//**           successful, all other codes denote an error.
//**
//****************************************************************************/
//BLI_ERRORCODE BLI_TIM_StartTimer(BLI_TIM_Handle Handle, BLI_UINT32 Mode, BLI_UINT32 Rate, BLI_VOID *cbeAddr );
//
///*!
//******************************************************************************
//**
//** \fn BLI_ERRORCODE BLI_TIM_StopTimer(BLI_TIM_Handle Handle)
//**
//** \brief    Stops a timer.
//**
//** \param    Handle    Handle of the timer to stop
//**
//** \returns  The return status. BLI_RETURN_OK indicates the function was
//**           successful, all other codes denote an error.
//**
//****************************************************************************/
//BLI_ERRORCODE BLI_TIM_StopTimer(BLI_TIM_Handle Handle);
//
///*!
//******************************************************************************
//**
//** \fn BLI_ERRORCODE BLI_TIM_GetTickCount(BLI_TIM_Handle Handle, BLI_UINT32 *Tick)
//**
//** \brief    Retrieves the timers tick count.
//**
//** \param    Handle    Handle of the timer to stop
//** \param    *Tick     holds the timers tick count
//**
//** \returns  The return status. BLI_RETURN_OK indicates the function was
//**           successful, all other codes denote an error.
//**
//****************************************************************************/
//BLI_ERRORCODE BLI_TIM_GetTickCount(BLI_TIM_Handle Handle, BLI_UINT32 *Tick);

#endif //__TIM_4_H__