################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../BulletHaven/libs/Box2D/Collision/b2BroadPhase.cpp \
../BulletHaven/libs/Box2D/Collision/b2CollideCircle.cpp \
../BulletHaven/libs/Box2D/Collision/b2CollidePolygon.cpp \
../BulletHaven/libs/Box2D/Collision/b2Collision.cpp \
../BulletHaven/libs/Box2D/Collision/b2Distance.cpp \
../BulletHaven/libs/Box2D/Collision/b2DynamicTree.cpp \
../BulletHaven/libs/Box2D/Collision/b2TimeOfImpact.cpp 

OBJS += \
./BulletHaven/libs/Box2D/Collision/b2BroadPhase.o \
./BulletHaven/libs/Box2D/Collision/b2CollideCircle.o \
./BulletHaven/libs/Box2D/Collision/b2CollidePolygon.o \
./BulletHaven/libs/Box2D/Collision/b2Collision.o \
./BulletHaven/libs/Box2D/Collision/b2Distance.o \
./BulletHaven/libs/Box2D/Collision/b2DynamicTree.o \
./BulletHaven/libs/Box2D/Collision/b2TimeOfImpact.o 

CPP_DEPS += \
./BulletHaven/libs/Box2D/Collision/b2BroadPhase.d \
./BulletHaven/libs/Box2D/Collision/b2CollideCircle.d \
./BulletHaven/libs/Box2D/Collision/b2CollidePolygon.d \
./BulletHaven/libs/Box2D/Collision/b2Collision.d \
./BulletHaven/libs/Box2D/Collision/b2Distance.d \
./BulletHaven/libs/Box2D/Collision/b2DynamicTree.d \
./BulletHaven/libs/Box2D/Collision/b2TimeOfImpact.d 


# Each subdirectory must supply rules for building sources it contributes
BulletHaven/libs/Box2D/Collision/%.o: ../BulletHaven/libs/Box2D/Collision/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/boost -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/include -I/Developer/SDKs/MacOSX10.6.sdk/System/Library/Frameworks/OpenGL.framework/Headers -I"/Users/onedayitwillmake/GIT/BulletHaven/thirdparty" -I"/Users/onedayitwillmake/GIT/BulletHaven/include" -O0 -g -Wall -c -fmessage-length=0 -arch i386 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


