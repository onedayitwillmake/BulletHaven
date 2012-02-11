################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../BulletHaven/libs/BulletML/tinyxml/tinyxml.cpp \
../BulletHaven/libs/BulletML/tinyxml/tinyxmlerror.cpp \
../BulletHaven/libs/BulletML/tinyxml/tinyxmlparser.cpp 

OBJS += \
./BulletML/tinyxml/tinyxml.o \
./BulletML/tinyxml/tinyxmlerror.o \
./BulletML/tinyxml/tinyxmlparser.o 

CPP_DEPS += \
./BulletML/tinyxml/tinyxml.d \
./BulletML/tinyxml/tinyxmlerror.d \
./BulletML/tinyxml/tinyxmlparser.d 


# Each subdirectory must supply rules for building sources it contributes
BulletML/tinyxml/tinyxml.o: /Users/onedayitwillmake/GIT/BulletHaven/BulletHaven/libs/BulletML/tinyxml/tinyxml.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/boost -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/include -I/Developer/SDKs/MacOSX10.6.sdk/System/Library/Frameworks/OpenGL.framework/Headers -I"/Users/onedayitwillmake/GIT/BulletHaven/thirdparty" -I"/Users/onedayitwillmake/GIT/BulletHaven/include" -O0 -g -Wall -c -fmessage-length=0 -arch i386 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

BulletML/tinyxml/tinyxmlerror.o: /Users/onedayitwillmake/GIT/BulletHaven/BulletHaven/libs/BulletML/tinyxml/tinyxmlerror.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/boost -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/include -I/Developer/SDKs/MacOSX10.6.sdk/System/Library/Frameworks/OpenGL.framework/Headers -I"/Users/onedayitwillmake/GIT/BulletHaven/thirdparty" -I"/Users/onedayitwillmake/GIT/BulletHaven/include" -O0 -g -Wall -c -fmessage-length=0 -arch i386 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

BulletML/tinyxml/tinyxmlparser.o: /Users/onedayitwillmake/GIT/BulletHaven/BulletHaven/libs/BulletML/tinyxml/tinyxmlparser.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/boost -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/include -I/Developer/SDKs/MacOSX10.6.sdk/System/Library/Frameworks/OpenGL.framework/Headers -I"/Users/onedayitwillmake/GIT/BulletHaven/thirdparty" -I"/Users/onedayitwillmake/GIT/BulletHaven/include" -O0 -g -Wall -c -fmessage-length=0 -arch i386 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


