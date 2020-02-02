
cmake_minimum_required(VERSION 3.3 FATAL_ERROR)

project(MoveActor)

find_package(VTK COMPONENTS 
  vtkCommonCore
  vtkCommonDataModel
  vtkFiltersSources
  vtkInteractionStyle
  vtkRenderingCore
  vtkRenderingFreeType
  vtkRenderingOpenGL2 QUIET)
if (NOT VTK_FOUND)
  message("Skipping MoveActor: ${VTK_NOT_FOUND_MESSAGE}")
  return ()
endif()
message (STATUS "VTK_VERSION: ${VTK_VERSION}")
if (VTK_VERSION VERSION_LESS "8.90.0")
  # old system
  include(${VTK_USE_FILE})
  add_executable(MoveActor MACOSX_BUNDLE MoveActor.cxx )
  target_link_libraries(MoveActor PRIVATE ${VTK_LIBRARIES})
else ()
  # include all components
  add_executable(MoveActor MACOSX_BUNDLE MoveActor.cxx )
  target_link_libraries(MoveActor PRIVATE ${VTK_LIBRARIES})
  # vtk_module_autoinit is needed
  vtk_module_autoinit(
    TARGETS MoveActor
    MODULES ${VTK_LIBRARIES}
    )
endif () 
