################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../BulletHaven/libs/Box2D/Collision/Shapes/b2CircleShape.cpp \
../BulletHaven/libs/Box2D/Collision/Shapes/b2PolygonShape.cpp 

OBJS += \
./BulletHaven/libs/Box2D/Collision/Shapes/b2CircleShape.o \
./BulletHaven/libs/Box2D/Collision/Shapes/b2PolygonShape.o 

CPP_DEPS += \
./BulletHaven/libs/Box2D/Collision/Shapes/b2CircleShape.d \
./BulletHaven/libs/Box2D/Collision/Shapes/b2PolygonShape.d 


# Each subdirectory must supply rules for building sources it contributes
BulletHaven/libs/Box2D/Collision/Shapes/%.o: ../BulletHaven/libs/Box2D/Collision/Shapes/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/boost -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/include -I/Developer/SDKs/MacOSX10.6.sdk/System/Library/Frameworks/OpenGL.framework/Headers -I"/Users/onedayitwillmake/GIT/BulletHaven/thirdparty" -I"/Users/onedayitwillmake/GIT/BulletHaven/include" -O0 -g -Wall -c -fmessage-length=0 -arch i386 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


