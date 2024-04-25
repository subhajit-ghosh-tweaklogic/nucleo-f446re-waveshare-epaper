################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../e-Paper/EPD.c \
../e-Paper/EPD_2in9_V2.c \
../e-Paper/ImageData.c 

OBJS += \
./e-Paper/EPD.o \
./e-Paper/EPD_2in9_V2.o \
./e-Paper/ImageData.o 

C_DEPS += \
./e-Paper/EPD.d \
./e-Paper/EPD_2in9_V2.d \
./e-Paper/ImageData.d 


# Each subdirectory must supply rules for building sources it contributes
e-Paper/%.o e-Paper/%.su e-Paper/%.cyclo: ../e-Paper/%.c e-Paper/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Fonts -I../Config -I../Debug -I../e-Paper -I../GUI -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-e-2d-Paper

clean-e-2d-Paper:
	-$(RM) ./e-Paper/EPD.cyclo ./e-Paper/EPD.d ./e-Paper/EPD.o ./e-Paper/EPD.su ./e-Paper/EPD_2in9_V2.cyclo ./e-Paper/EPD_2in9_V2.d ./e-Paper/EPD_2in9_V2.o ./e-Paper/EPD_2in9_V2.su ./e-Paper/ImageData.cyclo ./e-Paper/ImageData.d ./e-Paper/ImageData.o ./e-Paper/ImageData.su

.PHONY: clean-e-2d-Paper

