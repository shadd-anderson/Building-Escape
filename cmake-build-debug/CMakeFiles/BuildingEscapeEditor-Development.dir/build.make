# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\shadd\Unreal-Projects\Section_03\Building-Escape\BuildingEscape

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\shadd\Unreal-Projects\Section_03\Building-Escape\BuildingEscape\cmake-build-debug

# Utility rule file for BuildingEscapeEditor-Development.

# Include the progress variables for this target.
include CMakeFiles/BuildingEscapeEditor-Development.dir/progress.make

CMakeFiles/BuildingEscapeEditor-Development:
	cd "C:/Program Files/Epic Games/UE_4.15/Engine/Binaries/DotNET" && UnrealBuildTool.exe BuildingEscapeEditor Win64 Development -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -game

BuildingEscapeEditor-Development: CMakeFiles/BuildingEscapeEditor-Development
BuildingEscapeEditor-Development: CMakeFiles/BuildingEscapeEditor-Development.dir/build.make

.PHONY : BuildingEscapeEditor-Development

# Rule to build all files generated by this target.
CMakeFiles/BuildingEscapeEditor-Development.dir/build: BuildingEscapeEditor-Development

.PHONY : CMakeFiles/BuildingEscapeEditor-Development.dir/build

CMakeFiles/BuildingEscapeEditor-Development.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\BuildingEscapeEditor-Development.dir\cmake_clean.cmake
.PHONY : CMakeFiles/BuildingEscapeEditor-Development.dir/clean

CMakeFiles/BuildingEscapeEditor-Development.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\shadd\Unreal-Projects\Section_03\Building-Escape\BuildingEscape C:\Users\shadd\Unreal-Projects\Section_03\Building-Escape\BuildingEscape C:\Users\shadd\Unreal-Projects\Section_03\Building-Escape\BuildingEscape\cmake-build-debug C:\Users\shadd\Unreal-Projects\Section_03\Building-Escape\BuildingEscape\cmake-build-debug C:\Users\shadd\Unreal-Projects\Section_03\Building-Escape\BuildingEscape\cmake-build-debug\CMakeFiles\BuildingEscapeEditor-Development.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BuildingEscapeEditor-Development.dir/depend

