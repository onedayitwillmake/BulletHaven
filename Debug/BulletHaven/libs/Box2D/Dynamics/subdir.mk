################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../BulletHaven/libs/Box2D/Dynamics/b2Body.cpp \
../BulletHaven/libs/Box2D/Dynamics/b2ContactManager.cpp \
../BulletHaven/libs/Box2D/Dynamics/b2Fixture.cpp \
../BulletHaven/libs/Box2D/Dynamics/b2Island.cpp \
../BulletHaven/libs/Box2D/Dynamics/b2World.cpp \
../BulletHaven/libs/Box2D/Dynamics/b2WorldCallbacks.cpp 

OBJS += \
./BulletHaven/libs/Box2D/Dynamics/b2Body.o \
./BulletHaven/libs/Box2D/Dynamics/b2ContactManager.o \
./BulletHaven/libs/Box2D/Dynamics/b2Fixture.o \
./BulletHaven/libs/Box2D/Dynamics/b2Island.o \
./BulletHaven/libs/Box2D/Dynamics/b2World.o \
./BulletHaven/libs/Box2D/Dynamics/b2WorldCallbacks.o 

CPP_DEPS += \
./BulletHaven/libs/Box2D/Dynamics/b2Body.d \
./BulletHaven/libs/Box2D/Dynamics/b2ContactManager.d \
./BulletHaven/libs/Box2D/Dynamics/b2Fixture.d \
./BulletHaven/libs/Box2D/Dynamics/b2Island.d \
./BulletHaven/libs/Box2D/Dynamics/b2World.d \
./BulletHaven/libs/Box2D/Dynamics/b2WorldCallbacks.d 


# Each subdirectory must supply rules for building sources it contributes
BulletHaven/libs/Box2D/Dynamics/%.o: ../BulletHaven/libs/Box2D/Dynamics/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/boost -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/include -I/Developer/SDKs/MacOSX10.6.sdk/System/Library/Frameworks/OpenGL.framework/Headers -I"/Users/onedayitwillmake/GIT/BulletHaven/thirdparty" -I"/Users/onedayitwillmake/GIT/BulletHaven/include" -O0 -g -Wall -c -fmessage-length=0 -arch i386 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


