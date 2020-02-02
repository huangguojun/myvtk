
cmake_minimum_required(VERSION 3.3 FATAL_ERROR)

project(QImageToImageSource)

find_package(VTK COMPONENTS 
  vtkCommonCore
  vtkRenderingQt QUIET)
if (NOT VTK_FOUND)
  message("Skipping QImageToImageSource: ${VTK_NOT_FOUND_MESSAGE}")
  return ()
endif()
message (STATUS "VTK_VERSION: ${VTK_VERSION}")
if (VTK_VERSION VERSION_LESS "8.90.0")
  # old system
  include(${VTK_USE_FILE})
  add_executable(QImageToImageSource MACOSX_BUNDLE QImageToImageSource.cxx )
  target_link_libraries(QImageToImageSource PRIVATE ${VTK_LIBRARIES})
else ()
  # include all components
  add_executable(QImageToImageSource MACOSX_BUNDLE QImageToImageSource.cxx )
  target_link_libraries(QImageToImageSource PRIVATE ${VTK_LIBRARIES})
  # vtk_module_autoinit is needed
  vtk_module_autoinit(
    TARGETS QImageToImageSource
    MODULES ${VTK_LIBRARIES}
    )
endif () 
