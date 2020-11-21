#include "mb_thread.h"
#include "FreeRTOS.h"
#include "task.h"
#include "mb.h"

#define MB_TASK_STACK_SIZE 256u
#define MB_TASK__PRIORITY 3u
TaskHandle_t MB_Task_Handle;
StackType_t MB_Task_Stack[MB_TASK_STACK_SIZE];
StaticTask_t MB_Task_TCB;
void MB_Task(void *argument);

#define REG_INPUT_START 1000
#define REG_INPUT_NREGS 4
#define REG_HOLDING_START 1000
#define REG_HOLDING_NREGS 130

static USHORT usRegInputStart = REG_INPUT_START;
static USHORT usRegInputBuf[REG_INPUT_NREGS];
static USHORT usRegHoldingStart = REG_HOLDING_START;
static USHORT usRegHoldingBuf[REG_HOLDING_NREGS];

void MB_Thread_Add()
{
	MB_Task_Handle = xTaskCreateStatic(MB_Task,
									   "MB_Task",
									   MB_TASK_STACK_SIZE,
									   NULL,
									   MB_TASK__PRIORITY,
									   MB_Task_Stack,
									   &MB_Task_TCB);
}

void MB_Task(void *argument)
{
	eMBErrorCode eStatus;

	eStatus = eMBInit(MB_RTU, 5, 2, 38400, MB_PAR_NONE);
	eStatus = eMBEnable();
	(void)eStatus;

	usRegInputBuf[0] = 11;
	usRegInputBuf[1] = 22;
	usRegInputBuf[2] = 33;
	usRegInputBuf[3] = 44;

	while (1)
	{
		eMBPoll();
		/* Here we simply count the number of poll cycles. */
		usRegInputBuf[0]++;
	}
}

eMBErrorCode eMBRegInputCB(UCHAR *pucRegBuffer, USHORT usAddress,
						   USHORT usNRegs)
{
	eMBErrorCode eStatus = MB_ENOERR;
	int iRegIndex;

	if ((usAddress >= REG_INPUT_START) && (usAddress + usNRegs <= REG_INPUT_START + REG_INPUT_NREGS))
	{
		iRegIndex = (int)(usAddress - usRegInputStart);
		while (usNRegs > 0)
		{
			*pucRegBuffer++ = (unsigned char)(usRegInputBuf[iRegIndex] >> 8);
			*pucRegBuffer++ = (unsigned char)(usRegInputBuf[iRegIndex] & 0xFF);
			iRegIndex++;
			usNRegs--;
		}
	}
	else
	{
		eStatus = MB_ENOREG;
	}

	return eStatus;
}

eMBErrorCode eMBRegHoldingCB(UCHAR *pucRegBuffer, USHORT usAddress,
							 USHORT usNRegs, eMBRegisterMode eMode)
{
	eMBErrorCode eStatus = MB_ENOERR;
	int iRegIndex;

	if ((usAddress >= REG_HOLDING_START) && (usAddress + usNRegs <= REG_HOLDING_START + REG_HOLDING_NREGS))
	{
		iRegIndex = (int)(usAddress - usRegHoldingStart);
		switch (eMode)
		{
		/* Pass current register values to the protocol stack. */
		case MB_REG_READ:
			while (usNRegs > 0)
			{
				*pucRegBuffer++ = (unsigned char)(usRegHoldingBuf[iRegIndex] >> 8);
				*pucRegBuffer++ = (unsigned char)(usRegHoldingBuf[iRegIndex] & 0xFF);
				iRegIndex++;
				usNRegs--;
			}
			break;

			/* Update current register values with new values from the
	     * protocol stack. */
		case MB_REG_WRITE:
			while (usNRegs > 0)
			{
				usRegHoldingBuf[iRegIndex] = *pucRegBuffer++ << 8;
				usRegHoldingBuf[iRegIndex] |= *pucRegBuffer++;
				iRegIndex++;
				usNRegs--;
			}
		}
	}
	else
	{
		eStatus = MB_ENOREG;
	}
	return eStatus;
}

eMBErrorCode eMBRegCoilsCB(UCHAR *pucRegBuffer, USHORT usAddress,
						   USHORT usNCoils, eMBRegisterMode eMode)
{
	return MB_ENOREG;
}

eMBErrorCode eMBRegDiscreteCB(UCHAR *pucRegBuffer, USHORT usAddress,
							  USHORT usNDiscrete)
{
	return MB_ENOREG;
}
