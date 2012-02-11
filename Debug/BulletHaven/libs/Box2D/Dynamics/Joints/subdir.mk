################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../BulletHaven/libs/Box2D/Dynamics/Joints/b2DistanceJoint.cpp \
../BulletHaven/libs/Box2D/Dynamics/Joints/b2FrictionJoint.cpp \
../BulletHaven/libs/Box2D/Dynamics/Joints/b2GearJoint.cpp \
../BulletHaven/libs/Box2D/Dynamics/Joints/b2Joint.cpp \
../BulletHaven/libs/Box2D/Dynamics/Joints/b2LineJoint.cpp \
../BulletHaven/libs/Box2D/Dynamics/Joints/b2MouseJoint.cpp \
../BulletHaven/libs/Box2D/Dynamics/Joints/b2PrismaticJoint.cpp \
../BulletHaven/libs/Box2D/Dynamics/Joints/b2PulleyJoint.cpp \
../BulletHaven/libs/Box2D/Dynamics/Joints/b2RevoluteJoint.cpp \
../BulletHaven/libs/Box2D/Dynamics/Joints/b2WeldJoint.cpp 

OBJS += \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2DistanceJoint.o \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2FrictionJoint.o \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2GearJoint.o \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2Joint.o \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2LineJoint.o \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2MouseJoint.o \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2PrismaticJoint.o \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2PulleyJoint.o \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2RevoluteJoint.o \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2WeldJoint.o 

CPP_DEPS += \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2DistanceJoint.d \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2FrictionJoint.d \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2GearJoint.d \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2Joint.d \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2LineJoint.d \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2MouseJoint.d \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2PrismaticJoint.d \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2PulleyJoint.d \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2RevoluteJoint.d \
./BulletHaven/libs/Box2D/Dynamics/Joints/b2WeldJoint.d 


# Each subdirectory must supply rules for building sources it contributes
BulletHaven/libs/Box2D/Dynamics/Joints/%.o: ../BulletHaven/libs/Box2D/Dynamics/Joints/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/boost -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/include -I/Developer/SDKs/MacOSX10.6.sdk/System/Library/Frameworks/OpenGL.framework/Headers -I"/Users/onedayitwillmake/GIT/BulletHaven/thirdparty" -I"/Users/onedayitwillmake/GIT/BulletHaven/include" -O0 -g -Wall -c -fmessage-length=0 -arch i386 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


