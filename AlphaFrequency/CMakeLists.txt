
cmake_minimum_required(VERSION 3.3 FATAL_ERROR)

project(AlphaFrequency)

find_package(VTK COMPONENTS 
  vtkCommonColor
  vtkFiltersModeling
  vtkInteractionStyle
  vtkRenderingContextOpenGL2
  vtkRenderingCore
  vtkRenderingFreeType
  vtkRenderingGL2PSOpenGL2
  vtkRenderingOpenGL2 QUIET)
if (NOT VTK_FOUND)
  message("Skipping AlphaFrequency: ${VTK_NOT_FOUND_MESSAGE}")
  return ()
endif()
message (STATUS "VTK_VERSION: ${VTK_VERSION}")
if (VTK_VERSION VERSION_LESS "8.90.0")
  # old system
  include(${VTK_USE_FILE})
  add_executable(AlphaFrequency MACOSX_BUNDLE AlphaFrequency.cxx )
  target_link_libraries(AlphaFrequency PRIVATE ${VTK_LIBRARIES})
else ()
  # include all components
  add_executable(AlphaFrequency MACOSX_BUNDLE AlphaFrequency.cxx )
  target_link_libraries(AlphaFrequency PRIVATE ${VTK_LIBRARIES})
  # vtk_module_autoinit is needed
  vtk_module_autoinit(
    TARGETS AlphaFrequency
    MODULES ${VTK_LIBRARIES}
    )
endif () 
