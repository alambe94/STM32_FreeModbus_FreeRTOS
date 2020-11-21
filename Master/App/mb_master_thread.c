#include "mb_master_thread.h"
#include "FreeRTOS.h"
#include "task.h"
#include "mbport.h"
#include "port.h"
#include "mb_m.h"
#include "mbutils.h"
#include "mb.h"

#define MB_Master_TASK_STACK_SIZE 512u
#define MB_Master_TASK_PRIORITY 5u
TaskHandle_t MB_Master_Task_Handle;
StackType_t MB_Master_Task_Stack[MB_Master_TASK_STACK_SIZE];
StaticTask_t MB_Master_Task_TCB;
void MB_Master_Task(void *argument);

void MB_Master_Thread_Add()
{
	MB_Master_Task_Handle = xTaskCreateStatic(MB_Master_Task,
											  "MB_Master_Task",
											  MB_Master_TASK_STACK_SIZE,
											  NULL,
											  MB_Master_TASK_PRIORITY,
											  MB_Master_Task_Stack,
											  &MB_Master_Task_TCB);
}

void MB_Master_Task(void *argument)
{
	eMBMasterInit(MB_RTU, 2, 9600,  MB_PAR_NONE);
	eMBMasterEnable();

	while (1)
	{
		eMBMasterPoll();
	}
}

/**
 * Modbus master input register callback function.
 *
 * @param pucRegBuffer input register buffer
 * @param usAddress input register address
 * @param usNRegs input register number
 *
 * @return result
 */
eMBErrorCode eMBMasterRegInputCB( UCHAR * pucRegBuffer, USHORT usAddress, USHORT usNRegs )
{
    return MB_ENOERR;
}

/**
 * Modbus master holding register callback function.
 *
 * @param pucRegBuffer holding register buffer
 * @param usAddress holding register address
 * @param usNRegs holding register number
 * @param eMode read or write
 *
 * @return result
 */
eMBErrorCode eMBMasterRegHoldingCB(UCHAR * pucRegBuffer, USHORT usAddress,
        USHORT usNRegs, eMBRegisterMode eMode)
{
    return MB_ENOERR;
}

/**
 * Modbus master coils callback function.
 *
 * @param pucRegBuffer coils buffer
 * @param usAddress coils address
 * @param usNCoils coils number
 * @param eMode read or write
 *
 * @return result
 */
eMBErrorCode eMBMasterRegCoilsCB(UCHAR * pucRegBuffer, USHORT usAddress,
        USHORT usNCoils, eMBRegisterMode eMode)
{
    return MB_ENOERR;
}

/**
 * Modbus master discrete callback function.
 *
 * @param pucRegBuffer discrete buffer
 * @param usAddress discrete address
 * @param usNDiscrete discrete number
 *
 * @return result
 */
eMBErrorCode eMBMasterRegDiscreteCB( UCHAR * pucRegBuffer, USHORT usAddress, USHORT usNDiscrete )
{
    return MB_ENOERR;
}
