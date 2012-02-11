################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../BulletHaven/libs/BulletML/BulletMLController.cpp \
../BulletHaven/libs/BulletML/bulletmlparser-tinyxml.cpp \
../BulletHaven/libs/BulletML/bulletmlparser.cpp \
../BulletHaven/libs/BulletML/bulletmlrunner.cpp \
../BulletHaven/libs/BulletML/bulletmlrunnerimpl.cpp \
../BulletHaven/libs/BulletML/bulletmltree.cpp \
../BulletHaven/libs/BulletML/calc.cpp \
../BulletHaven/libs/BulletML/formula-variables.cpp 

OBJS += \
./BulletHaven/libs/BulletML/BulletMLController.o \
./BulletHaven/libs/BulletML/bulletmlparser-tinyxml.o \
./BulletHaven/libs/BulletML/bulletmlparser.o \
./BulletHaven/libs/BulletML/bulletmlrunner.o \
./BulletHaven/libs/BulletML/bulletmlrunnerimpl.o \
./BulletHaven/libs/BulletML/bulletmltree.o \
./BulletHaven/libs/BulletML/calc.o \
./BulletHaven/libs/BulletML/formula-variables.o 

CPP_DEPS += \
./BulletHaven/libs/BulletML/BulletMLController.d \
./BulletHaven/libs/BulletML/bulletmlparser-tinyxml.d \
./BulletHaven/libs/BulletML/bulletmlparser.d \
./BulletHaven/libs/BulletML/bulletmlrunner.d \
./BulletHaven/libs/BulletML/bulletmlrunnerimpl.d \
./BulletHaven/libs/BulletML/bulletmltree.d \
./BulletHaven/libs/BulletML/calc.d \
./BulletHaven/libs/BulletML/formula-variables.d 


# Each subdirectory must supply rules for building sources it contributes
BulletHaven/libs/BulletML/%.o: ../BulletHaven/libs/BulletML/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/boost -I/Users/onedayitwillmake/GIT/LIBRARY/Cinder/include -I/Developer/SDKs/MacOSX10.6.sdk/System/Library/Frameworks/OpenGL.framework/Headers -I"/Users/onedayitwillmake/GIT/BulletHaven/thirdparty" -I"/Users/onedayitwillmake/GIT/BulletHaven/include" -I"/Users/onedayitwillmake/GIT/BulletHaven/BulletHaven/libs/BulletML" -I"/Users/onedayitwillmake/GIT/BulletHaven/BulletHaven/Source/bulletml-wrapper" -O0 -g -Wall -c -fmessage-length=0 -arch i386 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


