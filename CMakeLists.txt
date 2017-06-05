cmake_minimum_required (VERSION 2.6)
project (UE4)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_COMPILER "C:/MinGW/bin/g++.exe")
set(CMAKE_C_COMPILER "C:/MinGW/bin/gcc.exe")

include("C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/Intermediate/ProjectFiles/IncludeDirectories.cmake")
include("C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/Intermediate/ProjectFiles/Definitions.cmake")
include("C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/Intermediate/ProjectFiles/BuildingEscape.cmake")

set(MONO_ROOT_PATH "C:/UnrealEngine-release/Engine/Binaries/DotNET")
set(BUILD cd "${MONO_ROOT_PATH}")

# Custom target for BuildingEscape project, Debug configuration
add_custom_target(BuildingEscape-Debug ${BUILD} && UnrealBuildTool.exe BuildingEscape Win64 Debug -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -game)
add_custom_target(BuildingEscape-Debug-CLEAN ${BUILD} && UnrealBuildTool.exe BuildingEscape Win64 Debug -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -clean)


# Custom target for BuildingEscape project, Development configuration
add_custom_target(BuildingEscape-Development ${BUILD} && UnrealBuildTool.exe BuildingEscape Win64 Development -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -game)
add_custom_target(BuildingEscape-Development-CLEAN ${BUILD} && UnrealBuildTool.exe BuildingEscape Win64 Development -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -clean)

include("C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/Intermediate/ProjectFiles/BuildingEscapeEditor.cmake")

# Custom target for BuildingEscapeEditor project, Debug configuration
add_custom_target(BuildingEscapeEditor-Debug ${BUILD} && UnrealBuildTool.exe BuildingEscapeEditor Win64 Debug -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -game)
add_custom_target(BuildingEscapeEditor-Debug-CLEAN ${BUILD} && UnrealBuildTool.exe BuildingEscapeEditor Win64 Debug -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -clean)


# Custom target for BuildingEscapeEditor project, Development configuration
add_custom_target(BuildingEscapeEditor-Development ${BUILD} && UnrealBuildTool.exe BuildingEscapeEditor Win64 Development -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -game)
add_custom_target(BuildingEscapeEditor-Development-CLEAN ${BUILD} && UnrealBuildTool.exe BuildingEscapeEditor Win64 Development -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -clean)

add_executable(PleaseIgnoreMe ${BuildingEscapeEditor_FILES})