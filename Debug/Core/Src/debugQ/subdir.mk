################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/debugQ/debugQ.c 

OBJS += \
./Core/Src/debugQ/debugQ.o 

C_DEPS += \
./Core/Src/debugQ/debugQ.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/debugQ/%.o Core/Src/debugQ/%.su Core/Src/debugQ/%.cyclo: ../Core/Src/debugQ/%.c Core/Src/debugQ/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F303x8 -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-debugQ

clean-Core-2f-Src-2f-debugQ:
	-$(RM) ./Core/Src/debugQ/debugQ.cyclo ./Core/Src/debugQ/debugQ.d ./Core/Src/debugQ/debugQ.o ./Core/Src/debugQ/debugQ.su

.PHONY: clean-Core-2f-Src-2f-debugQ

