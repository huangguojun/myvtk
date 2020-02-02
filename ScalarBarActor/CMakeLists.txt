
cmake_minimum_required(VERSION 3.3 FATAL_ERROR)

project(ScalarBarActor)

find_package(VTK COMPONENTS 
  vtkCommonCore
  vtkCommonDataModel
  vtkFiltersSources
  vtkInteractionStyle
  vtkRenderingAnnotation
  vtkRenderingCore
  vtkRenderingFreeType
  vtkRenderingOpenGL2 QUIET)
if (NOT VTK_FOUND)
  message("Skipping ScalarBarActor: ${VTK_NOT_FOUND_MESSAGE}")
  return ()
endif()
message (STATUS "VTK_VERSION: ${VTK_VERSION}")
if (VTK_VERSION VERSION_LESS "8.90.0")
  # old system
  include(${VTK_USE_FILE})
  add_executable(ScalarBarActor MACOSX_BUNDLE ScalarBarActor.cxx )
  target_link_libraries(ScalarBarActor PRIVATE ${VTK_LIBRARIES})
else ()
  # include all components
  add_executable(ScalarBarActor MACOSX_BUNDLE ScalarBarActor.cxx )
  target_link_libraries(ScalarBarActor PRIVATE ${VTK_LIBRARIES})
  # vtk_module_autoinit is needed
  vtk_module_autoinit(
    TARGETS ScalarBarActor
    MODULES ${VTK_LIBRARIES}
    )
endif () 
