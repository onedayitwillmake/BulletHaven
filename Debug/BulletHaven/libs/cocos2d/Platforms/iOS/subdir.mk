################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../BulletHaven/libs/cocos2d/Platforms/iOS/glu.c 

OBJS += \
./BulletHaven/libs/cocos2d/Platforms/iOS/glu.o 

C_DEPS += \
./BulletHaven/libs/cocos2d/Platforms/iOS/glu.d 


# Each subdirectory must supply rules for building sources it contributes
BulletHaven/libs/cocos2d/Platforms/iOS/%.o: ../BulletHaven/libs/cocos2d/Platforms/iOS/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O2 -g -Wall -c -fmessage-length=0 -arch i386 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


