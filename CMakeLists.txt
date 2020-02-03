cmake_minimum_required(VERSION 3.3 FATAL_ERROR)

project(WikiExamples)

#find_package(VTK CONFIG QUIET)
#include(${VTK_USE_FILE})

#if(NOT VTK_RENDERING_BACKEND)
#  set(VTK_RENDERING_BACKEND OpenGL2) # Support VTK version prior to introduction of rendering backend
#endif()

#-----------------------------------------------------------------------------
set(CMAKE_MODULE_PATH
  ${WikiExamples_SOURCE_DIR}/CMake
  ${CMAKE_MODULE_PATH}
  ${VTK_CMAKE_DIR}
  )

#-----------------------------------------------------------------------------
#include(WikiModuleConfigLegacy)
include(WikiOutputDirectories)
include(WikiPlatformSpecificChecks)
include(WikiPolicies)
include(WikiTestingConfig)
include(WikiLoadMacros)


#-----------------------------------------------------------------------------
add_subdirectory(./Cxx/Animation)
add_subdirectory(./Cxx/CompositeData)
if(VTK_USE_MYSQL)
  add_subdirectory(./Cxx/Databases)
endif()
add_subdirectory(./Cxx/DataStructures)
add_subdirectory(./Cxx/Developers)
add_subdirectory(./Cxx/Filtering)
#add_subdirectory(./Cxx/GeometricObjects)
if(VTK_USE_INFOVIS)
  if(VTK_USE_BOOST)
    add_subdirectory(./Cxx/Graphs)
  endif()
endif()
add_subdirectory(./Cxx/Annotation)
#add_subdirectory(./Cxx/ImageData)
add_subdirectory(./Cxx/Geovis)
#add_subdirectory(./Cxx/HyperTreeGrid)
#add_subdirectory(./Cxx/ImageProcessing)
#add_subdirectory(./Cxx/Images)
add_subdirectory(./Cxx/ImplicitFunctions)
#add_subdirectory(./Cxx/InfoVis)
add_subdirectory(./Cxx/Interaction)
#add_subdirectory(./Cxx/IO)
add_subdirectory(./Cxx/Lighting)
add_subdirectory(./Cxx/Math)
add_subdirectory(./Cxx/Medical)
add_subdirectory(./Cxx/Meshes)
add_subdirectory(./Cxx/Modelling)
#if(VTK_USE_PARALLEL)
# add_subdirectory(./Cxx/Parallel)
#endif()
add_subdirectory(./Cxx/Picking)
#add_subdirectory(./Cxx/Plotting)
#add_subdirectory(./Cxx/PolyData)
#add_subdirectory(./Cxx/Points)
add_subdirectory(./Cxx/RectilinearGrid)
add_subdirectory(./Cxx/Remote)
#add_subdirectory(./Cxx/Rendering)
#add_subdirectory(./Cxx/RenderMan)
#add_subdirectory(./Cxx/SimpleOperations)
#add_subdirectory(./Cxx/Shaders)
#add_subdirectory(./Cxx/StructuredGrid)
#add_subdirectory(./Cxx/StructuredPoints)
add_subdirectory(./Cxx/Texture)
#add_subdirectory(./Cxx/UnstructuredGrid)
add_subdirectory(./Cxx/Utilities)
add_subdirectory(./Cxx/Video)
if(VTK_USE_VIEWS)
 add_subdirectory(./Cxx/Views)
endif()
#add_subdirectory(./Cxx/Visualization)
#add_subdirectory(./Cxx/VisualizationAlgorithms)
#add_subdirectory(./Cxx/VolumeRendering)
add_subdirectory(./Cxx/Widgets)


set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
find_package(Qt5Widgets REQUIRED QUIET)
#add_subdirectory(./Cxx/Qt)

