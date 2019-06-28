################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/modbus/rtu/mbcrc.c \
../Middlewares/Third_Party/modbus/rtu/mbrtu.c 

OBJS += \
./Middlewares/Third_Party/modbus/rtu/mbcrc.o \
./Middlewares/Third_Party/modbus/rtu/mbrtu.o 

C_DEPS += \
./Middlewares/Third_Party/modbus/rtu/mbcrc.d \
./Middlewares/Third_Party/modbus/rtu/mbrtu.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/modbus/rtu/mbcrc.o: ../Middlewares/Third_Party/modbus/rtu/mbcrc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Middlewares/Third_Party/modbus/include -I../Middlewares/Third_Party/modbus/port -I../Middlewares/Third_Party/modbus/rtu -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/modbus/rtu/mbcrc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/modbus/rtu/mbrtu.o: ../Middlewares/Third_Party/modbus/rtu/mbrtu.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F401xE -DDEBUG -c -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Middlewares/Third_Party/modbus/include -I../Middlewares/Third_Party/modbus/port -I../Middlewares/Third_Party/modbus/rtu -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/modbus/rtu/mbrtu.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

