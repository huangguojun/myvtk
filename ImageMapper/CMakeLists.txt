
cmake_minimum_required(VERSION 3.3 FATAL_ERROR)

project(ImageMapper)

find_package(VTK COMPONENTS 
  vtkCommonCore
  vtkCommonDataModel
  vtkInteractionStyle
  vtkRenderingCore
  vtkRenderingFreeType
  vtkRenderingOpenGL2 QUIET)
if (NOT VTK_FOUND)
  message("Skipping ImageMapper: ${VTK_NOT_FOUND_MESSAGE}")
  return ()
endif()
message (STATUS "VTK_VERSION: ${VTK_VERSION}")
if (VTK_VERSION VERSION_LESS "8.90.0")
  # old system
  include(${VTK_USE_FILE})
  add_executable(ImageMapper MACOSX_BUNDLE ImageMapper.cxx )
  target_link_libraries(ImageMapper PRIVATE ${VTK_LIBRARIES})
else ()
  # include all components
  add_executable(ImageMapper MACOSX_BUNDLE ImageMapper.cxx )
  target_link_libraries(ImageMapper PRIVATE ${VTK_LIBRARIES})
  # vtk_module_autoinit is needed
  vtk_module_autoinit(
    TARGETS ImageMapper
    MODULES ${VTK_LIBRARIES}
    )
endif () 
