################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../GUI/GUI_Paint.c 

OBJS += \
./GUI/GUI_Paint.o 

C_DEPS += \
./GUI/GUI_Paint.d 


# Each subdirectory must supply rules for building sources it contributes
GUI/%.o GUI/%.su GUI/%.cyclo: ../GUI/%.c GUI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Fonts -I../Config -I../Debug -I../e-Paper -I../GUI -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-GUI

clean-GUI:
	-$(RM) ./GUI/GUI_Paint.cyclo ./GUI/GUI_Paint.d ./GUI/GUI_Paint.o ./GUI/GUI_Paint.su

.PHONY: clean-GUI
