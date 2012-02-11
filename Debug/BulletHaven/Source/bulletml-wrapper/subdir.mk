################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../BulletHaven/Source/bulletml-wrapper/command.cc \
../BulletHaven/Source/bulletml-wrapper/object.cc 

OBJS += \
./BulletHaven/Source/bulletml-wrapper/command.o \
./BulletHaven/Source/bulletml-wrapper/object.o 

CC_DEPS += \
./BulletHaven/Source/bulletml-wrapper/command.d \
./BulletHaven/Source/bulletml-wrapper/object.d 


# Each subdirectory must supply rules for building sources it contributes
BulletHaven/Source/bulletml-wrapper/%.o: ../BulletHaven/Source/bulletml-wrapper/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/boost -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/include -I/Developer/SDKs/MacOSX10.6.sdk/System/Library/Frameworks/OpenGL.framework/Headers -I"/Users/onedayitwillmake/GIT/BulletHaven/thirdparty" -I"/Users/onedayitwillmake/GIT/BulletHaven/include" -I"/Users/onedayitwillmake/GIT/BulletHaven/BulletHaven/libs/BulletML" -I"/Users/onedayitwillmake/GIT/BulletHaven/BulletHaven/Source/bulletml-wrapper" -O0 -g -Wall -c -fmessage-length=0 -arch i386 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


