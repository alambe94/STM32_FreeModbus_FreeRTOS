#include "FreeRTOS.h"
#include "task.h"
#include "mb_master_thread.h"
#include "usart.h"
#include "mb_m.h"

#define Main_TASK_STACK_SIZE 512u
#define Main_TASK_PRIORITY 3u
TaskHandle_t Main_Task_Handle;
StackType_t Main_Task_Stack[Main_TASK_STACK_SIZE];
StaticTask_t Main_Task_TCB;
void Main_Task(void *argument);

void Main_Thread_Add()
{
	Main_Task_Handle = xTaskCreateStatic(Main_Task,
										 "Main_Task",
										 Main_TASK_STACK_SIZE,
										 NULL,
										 Main_TASK_PRIORITY,
										 Main_Task_Stack,
										 &Main_Task_TCB);
}

void Main_Task(void *argument)
{
	eMBMasterReqErrCode errorCode = MB_MRE_NO_ERR;
	uint16_t errorCount = 0;

	while (1)
	{
		errorCode = eMBMasterReqReadInputRegister(1, 3, 2, 500);

		if (errorCode != MB_MRE_NO_ERR)
		{
			errorCount++;
		}
	}
}
