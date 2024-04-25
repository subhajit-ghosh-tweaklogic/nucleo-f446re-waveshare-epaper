################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/EPD_2in9_V2_test.c \
../User/ImageData.c 

OBJS += \
./User/EPD_2in9_V2_test.o \
./User/ImageData.o 

C_DEPS += \
./User/EPD_2in9_V2_test.d \
./User/ImageData.d 


# Each subdirectory must supply rules for building sources it contributes
User/%.o User/%.su User/%.cyclo: ../User/%.c User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Fonts -I../Config -I../Debug -I../e-Paper -I../GUI -I../User -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-User

clean-User:
	-$(RM) ./User/EPD_2in9_V2_test.cyclo ./User/EPD_2in9_V2_test.d ./User/EPD_2in9_V2_test.o ./User/EPD_2in9_V2_test.su ./User/ImageData.cyclo ./User/ImageData.d ./User/ImageData.o ./User/ImageData.su

.PHONY: clean-User

