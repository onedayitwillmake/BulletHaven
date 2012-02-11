################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../BulletHaven/libs/Box2D/Common/b2BlockAllocator.cpp \
../BulletHaven/libs/Box2D/Common/b2Math.cpp \
../BulletHaven/libs/Box2D/Common/b2Settings.cpp \
../BulletHaven/libs/Box2D/Common/b2StackAllocator.cpp 

OBJS += \
./BulletHaven/libs/Box2D/Common/b2BlockAllocator.o \
./BulletHaven/libs/Box2D/Common/b2Math.o \
./BulletHaven/libs/Box2D/Common/b2Settings.o \
./BulletHaven/libs/Box2D/Common/b2StackAllocator.o 

CPP_DEPS += \
./BulletHaven/libs/Box2D/Common/b2BlockAllocator.d \
./BulletHaven/libs/Box2D/Common/b2Math.d \
./BulletHaven/libs/Box2D/Common/b2Settings.d \
./BulletHaven/libs/Box2D/Common/b2StackAllocator.d 


# Each subdirectory must supply rules for building sources it contributes
BulletHaven/libs/Box2D/Common/%.o: ../BulletHaven/libs/Box2D/Common/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/boost -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/include -I/Developer/SDKs/MacOSX10.6.sdk/System/Library/Frameworks/OpenGL.framework/Headers -I"/Users/onedayitwillmake/GIT/BulletHaven/thirdparty" -I"/Users/onedayitwillmake/GIT/BulletHaven/include" -O0 -g -Wall -c -fmessage-length=0 -arch i386 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


