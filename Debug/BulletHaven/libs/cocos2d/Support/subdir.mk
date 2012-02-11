################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../BulletHaven/libs/cocos2d/Support/base64.c \
../BulletHaven/libs/cocos2d/Support/ccUtils.c 

OBJS += \
./BulletHaven/libs/cocos2d/Support/base64.o \
./BulletHaven/libs/cocos2d/Support/ccUtils.o 

C_DEPS += \
./BulletHaven/libs/cocos2d/Support/base64.d \
./BulletHaven/libs/cocos2d/Support/ccUtils.d 


# Each subdirectory must supply rules for building sources it contributes
BulletHaven/libs/cocos2d/Support/%.o: ../BulletHaven/libs/cocos2d/Support/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -arch i386 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


