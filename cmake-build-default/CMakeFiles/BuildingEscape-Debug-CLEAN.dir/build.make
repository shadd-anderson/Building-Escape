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
CMAKE_BINARY_DIR = C:\Users\shadd\Unreal-Projects\Section_03\Building-Escape\BuildingEscape\cmake-build-default

# Utility rule file for BuildingEscape-Debug-CLEAN.

# Include the progress variables for this target.
include CMakeFiles/BuildingEscape-Debug-CLEAN.dir/progress.make

CMakeFiles/BuildingEscape-Debug-CLEAN:
	cd C:/UnrealEngine-release/Engine/Binaries/DotNET && UnrealBuildTool.exe BuildingEscape Win64 Debug -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -clean

BuildingEscape-Debug-CLEAN: CMakeFiles/BuildingEscape-Debug-CLEAN
BuildingEscape-Debug-CLEAN: CMakeFiles/BuildingEscape-Debug-CLEAN.dir/build.make

.PHONY : BuildingEscape-Debug-CLEAN

# Rule to build all files generated by this target.
CMakeFiles/BuildingEscape-Debug-CLEAN.dir/build: BuildingEscape-Debug-CLEAN

.PHONY : CMakeFiles/BuildingEscape-Debug-CLEAN.dir/build

CMakeFiles/BuildingEscape-Debug-CLEAN.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\BuildingEscape-Debug-CLEAN.dir\cmake_clean.cmake
.PHONY : CMakeFiles/BuildingEscape-Debug-CLEAN.dir/clean

CMakeFiles/BuildingEscape-Debug-CLEAN.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\shadd\Unreal-Projects\Section_03\Building-Escape\BuildingEscape C:\Users\shadd\Unreal-Projects\Section_03\Building-Escape\BuildingEscape C:\Users\shadd\Unreal-Projects\Section_03\Building-Escape\BuildingEscape\cmake-build-default C:\Users\shadd\Unreal-Projects\Section_03\Building-Escape\BuildingEscape\cmake-build-default C:\Users\shadd\Unreal-Projects\Section_03\Building-Escape\BuildingEscape\cmake-build-default\CMakeFiles\BuildingEscape-Debug-CLEAN.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BuildingEscape-Debug-CLEAN.dir/depend

