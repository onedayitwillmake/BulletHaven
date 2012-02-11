################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../BulletHaven/libs/Box2D/Dynamics/Contacts/b2CircleContact.cpp \
../BulletHaven/libs/Box2D/Dynamics/Contacts/b2Contact.cpp \
../BulletHaven/libs/Box2D/Dynamics/Contacts/b2ContactSolver.cpp \
../BulletHaven/libs/Box2D/Dynamics/Contacts/b2PolygonAndCircleContact.cpp \
../BulletHaven/libs/Box2D/Dynamics/Contacts/b2PolygonContact.cpp \
../BulletHaven/libs/Box2D/Dynamics/Contacts/b2TOISolver.cpp 

OBJS += \
./BulletHaven/libs/Box2D/Dynamics/Contacts/b2CircleContact.o \
./BulletHaven/libs/Box2D/Dynamics/Contacts/b2Contact.o \
./BulletHaven/libs/Box2D/Dynamics/Contacts/b2ContactSolver.o \
./BulletHaven/libs/Box2D/Dynamics/Contacts/b2PolygonAndCircleContact.o \
./BulletHaven/libs/Box2D/Dynamics/Contacts/b2PolygonContact.o \
./BulletHaven/libs/Box2D/Dynamics/Contacts/b2TOISolver.o 

CPP_DEPS += \
./BulletHaven/libs/Box2D/Dynamics/Contacts/b2CircleContact.d \
./BulletHaven/libs/Box2D/Dynamics/Contacts/b2Contact.d \
./BulletHaven/libs/Box2D/Dynamics/Contacts/b2ContactSolver.d \
./BulletHaven/libs/Box2D/Dynamics/Contacts/b2PolygonAndCircleContact.d \
./BulletHaven/libs/Box2D/Dynamics/Contacts/b2PolygonContact.d \
./BulletHaven/libs/Box2D/Dynamics/Contacts/b2TOISolver.d 


# Each subdirectory must supply rules for building sources it contributes
BulletHaven/libs/Box2D/Dynamics/Contacts/%.o: ../BulletHaven/libs/Box2D/Dynamics/Contacts/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/boost -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/include -I/Developer/SDKs/MacOSX10.6.sdk/System/Library/Frameworks/OpenGL.framework/Headers -I"/Users/onedayitwillmake/GIT/BulletHaven/thirdparty" -I"/Users/onedayitwillmake/GIT/BulletHaven/include" -O0 -g -Wall -c -fmessage-length=0 -arch i386 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


