################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../BulletHaven/libs/BulletML/tinyxml/tinyxml.cpp \
../BulletHaven/libs/BulletML/tinyxml/tinyxmlerror.cpp \
../BulletHaven/libs/BulletML/tinyxml/tinyxmlparser.cpp 

OBJS += \
./BulletHaven/libs/BulletML/tinyxml/tinyxml.o \
./BulletHaven/libs/BulletML/tinyxml/tinyxmlerror.o \
./BulletHaven/libs/BulletML/tinyxml/tinyxmlparser.o 

CPP_DEPS += \
./BulletHaven/libs/BulletML/tinyxml/tinyxml.d \
./BulletHaven/libs/BulletML/tinyxml/tinyxmlerror.d \
./BulletHaven/libs/BulletML/tinyxml/tinyxmlparser.d 


# Each subdirectory must supply rules for building sources it contributes
BulletHaven/libs/BulletML/tinyxml/%.o: ../BulletHaven/libs/BulletML/tinyxml/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/boost -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/include -I/Developer/SDKs/MacOSX10.6.sdk/System/Library/Frameworks/OpenGL.framework/Headers -I"/Users/onedayitwillmake/GIT/BulletHaven/thirdparty" -I"/Users/onedayitwillmake/GIT/BulletHaven/include" -I"/Users/onedayitwillmake/GIT/BulletHaven/BulletHaven/libs/BulletML" -I"/Users/onedayitwillmake/GIT/BulletHaven/BulletHaven/Source/bulletml-wrapper" -O0 -g -Wall -c -fmessage-length=0 -arch i386 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


