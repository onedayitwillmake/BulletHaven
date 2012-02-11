################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include src/subdir.mk
-include BulletHaven/libs/BulletML/tinyxml/subdir.mk
-include BulletHaven/libs/BulletML/subdir.mk
-include BulletHaven/Source/bulletml-wrapper/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: BulletHavenProject

# Tool invocations
BulletHavenProject: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MacOS X C++ Linker'
	g++ -L"/Users/onedayitwillmake/GIT/BulletHaven/lib" -L"/Users/onedayitwillmake/GIT/LIBRARY/Cinder/lib" -L"/Users/onedayitwillmake/GIT/LIBRARY/Cinder/lib/macosx" -L/Developer/SDKs/MacOSX10.6.sdk/System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries -arch i386 -framework Cocoa -framework OpenGL -framework Carbon -framework CoreVideo -framework QTKit -framework QuickTime -framework Accelerate -framework AudioToolbox -framework AudioUnit -framework CoreAudio -o "BulletHavenProject" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(C++_DEPS)$(OBJS)$(C_DEPS)$(CC_DEPS)$(CPP_DEPS)$(EXECUTABLES)$(CXX_DEPS)$(C_UPPER_DEPS) BulletHavenProject
	-@echo ' '

post-build:
	-python ../tools/postinstall.py -appName=BulletHavenProject --cwd=/Users/onedayitwillmake/GIT/BulletHaven/Debug;
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
