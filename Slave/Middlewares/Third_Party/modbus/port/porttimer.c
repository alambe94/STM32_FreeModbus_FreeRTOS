/*
 * FreeModbus Libary: BARE Port
 * Copyright (C) 2006 Christian Walter <wolti@sil.at>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 *
 * File: $Id$
 */

/* ----------------------- Platform includes --------------------------------*/
#include "port.h"

/* ----------------------- Modbus includes ----------------------------------*/
#include "mb.h"
#include "mbport.h"

/* ----------------------- static functions ---------------------------------*/

/* ----------------------- Start implementation -----------------------------*/

extern TIM_HandleTypeDef htim11;
#define MB_Timer htim11

BOOL xMBPortTimersInit(USHORT usTim1Timerout50us)
{
    /* Configured in cube, see tim.c */

    MB_Timer.Instance->CNT = 0;
    MB_Timer.Instance->ARR = usTim1Timerout50us - 1;
    return TRUE;
}

void vMBPortTimersEnable()
{
    /* Enable the timer with the timeout passed to xMBPortTimersInit( ) */
    /* RESET TIMER */
    MB_Timer.Instance->CNT = 0;
    HAL_TIM_Base_Start_IT(&MB_Timer);
}

void vMBPortTimersDisable()
{
    /* Disable any pending timers. */
    HAL_TIM_Base_Stop_IT(&MB_Timer);
}

/* Create an ISR which is called whenever the timer has expired. This function
 * must then call pxMBPortCBTimerExpired( ) to notify the protocol stack that
 * the timer has expired.
 */
void MB_Timer_ISR(void)
{
    (void)pxMBPortCBTimerExpired();
}
