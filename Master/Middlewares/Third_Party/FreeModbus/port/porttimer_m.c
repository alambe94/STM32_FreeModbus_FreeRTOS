/*
 * FreeModbus Libary: RT-Thread Port
 * Copyright (C) 2013 Armink <armink.ztl@gmail.com>
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
 * File: $Id: porttimer_m.c,v 1.60 2013/08/13 15:07:05 Armink add Master Functions$
 */

/* ----------------------- Platform includes --------------------------------*/
#include "port.h"

/* ----------------------- Modbus includes ----------------------------------*/
#include "mb.h"
#include "mb_m.h"
#include "mbport.h"

#if MB_MASTER_RTU_ENABLED > 0 || MB_MASTER_ASCII_ENABLED > 0
/* ----------------------- Variables ----------------------------------------*/
static uint32_t usT35TimeOut50us;
/* ----------------------- static functions ---------------------------------*/

/* ----------------------- Start implementation -----------------------------*/

extern TIM_HandleTypeDef htim2;

#define MB_MASTER_TIM htim2

BOOL xMBMasterPortTimersInit(USHORT usTimeOut50us)
{
    /* Configured in cube, see tim.c */

    usT35TimeOut50us = usTimeOut50us;

    MB_MASTER_TIM.Instance->CNT = 0;
    MB_MASTER_TIM.Instance->ARR = usT35TimeOut50us - 1;
    return TRUE;
}

void vMBMasterPortTimersT35Enable()
{
    MB_MASTER_TIM.Instance->CNT = 0;
    MB_MASTER_TIM.Instance->ARR = usT35TimeOut50us - 1;

    vMBMasterSetCurTimerMode(MB_TMODE_T35);
    HAL_TIM_Base_Start_IT(&MB_MASTER_TIM);
}

void vMBMasterPortTimersConvertDelayEnable()
{
    MB_MASTER_TIM.Instance->CNT = 0;
    MB_MASTER_TIM.Instance->ARR = (20*MB_MASTER_DELAY_MS_CONVERT) - 1;

    vMBMasterSetCurTimerMode(MB_TMODE_CONVERT_DELAY);
    MB_MASTER_TIM.Instance->CNT = 0;
    HAL_TIM_Base_Start_IT(&MB_MASTER_TIM);
}

void vMBMasterPortTimersRespondTimeoutEnable()
{
    MB_MASTER_TIM.Instance->CNT = 0;
    MB_MASTER_TIM.Instance->ARR = (20*MB_MASTER_TIMEOUT_MS_RESPOND) - 1;

    vMBMasterSetCurTimerMode(MB_TMODE_RESPOND_TIMEOUT);
    MB_MASTER_TIM.Instance->CNT = 0;
    HAL_TIM_Base_Start_IT(&MB_MASTER_TIM);
}

void vMBMasterPortTimersDisable()
{
    HAL_TIM_Base_Stop_IT(&MB_MASTER_TIM);
}

void MB_MASTER_TIM_ISR(void)
{
    (void)pxMBMasterPortCBTimerExpired();
}

#endif
