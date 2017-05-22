cmake_minimum_required (VERSION 2.6)
project (UE4)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_COMPILER "C:/MinGW/bin/mingw32-gcc.exe")

include("C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/Intermediate/ProjectFiles/IncludeDirectories.cmake")
include("C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/Intermediate/ProjectFiles/Definitions.cmake")
include("C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/Intermediate/ProjectFiles/UE4Editor.cmake")

set(MONO_ROOT_PATH "C:/Program Files/Epic Games/UE_4.15/Engine/Binaries/DotNET")
set(BUILD cd "${MONO_ROOT_PATH}")

# Custom target for UE4Editor project, Development configuration
add_custom_target(UE4Editor-Development ${BUILD} && UnrealBuildTool.exe UE4Editor Win64 Development -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -game)
add_custom_target(UE4Editor-Development-CLEAN ${BUILD} && UnrealBuildTool.exe UE4Editor Win64 Development -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -clean)

include("C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/Intermediate/ProjectFiles/UE4Game.cmake")

# Custom target for UE4Game project, Development configuration
add_custom_target(UE4Game-Development ${BUILD} && UnrealBuildTool.exe UE4Game Win64 Development -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -game)
add_custom_target(UE4Game-Development-CLEAN ${BUILD} && UnrealBuildTool.exe UE4Game Win64 Development -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -clean)

include("C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/Intermediate/ProjectFiles/BuildingEscape.cmake")

# Custom target for BuildingEscape project, Development configuration
add_custom_target(BuildingEscape-Development ${BUILD} && UnrealBuildTool.exe BuildingEscape Win64 Development -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -game)
add_custom_target(BuildingEscape-Development-CLEAN ${BUILD} && UnrealBuildTool.exe BuildingEscape Win64 Development -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -clean)

include("C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/Intermediate/ProjectFiles/BuildingEscapeEditor.cmake")

# Custom target for BuildingEscapeEditor project, Development configuration
add_custom_target(BuildingEscapeEditor-Development ${BUILD} && UnrealBuildTool.exe BuildingEscapeEditor Win64 Development -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -game)
add_custom_target(BuildingEscapeEditor-Development-CLEAN ${BUILD} && UnrealBuildTool.exe BuildingEscapeEditor Win64 Development -project="C:/Users/shadd/Unreal-Projects/Section_03/Building-Escape/BuildingEscape/BuildingEscape.uproject" -clean)

add_executable(PleaseIgnoreMe ${BuildingEscapeEditor_FILES})