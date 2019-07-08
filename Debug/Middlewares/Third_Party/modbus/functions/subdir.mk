################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/modbus/functions/mbfunccoils.c \
../Middlewares/Third_Party/modbus/functions/mbfuncdiag.c \
../Middlewares/Third_Party/modbus/functions/mbfuncdisc.c \
../Middlewares/Third_Party/modbus/functions/mbfuncholding.c \
../Middlewares/Third_Party/modbus/functions/mbfuncinput.c \
../Middlewares/Third_Party/modbus/functions/mbfuncother.c \
../Middlewares/Third_Party/modbus/functions/mbutils.c 

OBJS += \
./Middlewares/Third_Party/modbus/functions/mbfunccoils.o \
./Middlewares/Third_Party/modbus/functions/mbfuncdiag.o \
./Middlewares/Third_Party/modbus/functions/mbfuncdisc.o \
./Middlewares/Third_Party/modbus/functions/mbfuncholding.o \
./Middlewares/Third_Party/modbus/functions/mbfuncinput.o \
./Middlewares/Third_Party/modbus/functions/mbfuncother.o \
./Middlewares/Third_Party/modbus/functions/mbutils.o 

C_DEPS += \
./Middlewares/Third_Party/modbus/functions/mbfunccoils.d \
./Middlewares/Third_Party/modbus/functions/mbfuncdiag.d \
./Middlewares/Third_Party/modbus/functions/mbfuncdisc.d \
./Middlewares/Third_Party/modbus/functions/mbfuncholding.d \
./Middlewares/Third_Party/modbus/functions/mbfuncinput.d \
./Middlewares/Third_Party/modbus/functions/mbfuncother.d \
./Middlewares/Third_Party/modbus/functions/mbutils.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/modbus/functions/mbfunccoils.o: ../Middlewares/Third_Party/modbus/functions/mbfunccoils.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/modbus/include -I../Middlewares/Third_Party/modbus/port -I../Middlewares/Third_Party/modbus/rtu -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/modbus/functions/mbfunccoils.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/modbus/functions/mbfuncdiag.o: ../Middlewares/Third_Party/modbus/functions/mbfuncdiag.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/modbus/include -I../Middlewares/Third_Party/modbus/port -I../Middlewares/Third_Party/modbus/rtu -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/modbus/functions/mbfuncdiag.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/modbus/functions/mbfuncdisc.o: ../Middlewares/Third_Party/modbus/functions/mbfuncdisc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/modbus/include -I../Middlewares/Third_Party/modbus/port -I../Middlewares/Third_Party/modbus/rtu -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/modbus/functions/mbfuncdisc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/modbus/functions/mbfuncholding.o: ../Middlewares/Third_Party/modbus/functions/mbfuncholding.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/modbus/include -I../Middlewares/Third_Party/modbus/port -I../Middlewares/Third_Party/modbus/rtu -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/modbus/functions/mbfuncholding.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/modbus/functions/mbfuncinput.o: ../Middlewares/Third_Party/modbus/functions/mbfuncinput.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/modbus/include -I../Middlewares/Third_Party/modbus/port -I../Middlewares/Third_Party/modbus/rtu -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/modbus/functions/mbfuncinput.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/modbus/functions/mbfuncother.o: ../Middlewares/Third_Party/modbus/functions/mbfuncother.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/modbus/include -I../Middlewares/Third_Party/modbus/port -I../Middlewares/Third_Party/modbus/rtu -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/modbus/functions/mbfuncother.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/modbus/functions/mbutils.o: ../Middlewares/Third_Party/modbus/functions/mbutils.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/modbus/include -I../Middlewares/Third_Party/modbus/port -I../Middlewares/Third_Party/modbus/rtu -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/modbus/functions/mbutils.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

