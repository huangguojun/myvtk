
cmake_minimum_required(VERSION 3.3 FATAL_ERROR)

project(RenderLargeImage)

find_package(VTK COMPONENTS 
  vtkCommonCore
  vtkFiltersHybrid
  vtkIOImage
  vtkIOXML
  vtkInteractionImage
  vtkInteractionStyle
  vtkRenderingCore
  vtkRenderingFreeType
  vtkRenderingOpenGL2 QUIET)
if (NOT VTK_FOUND)
  message("Skipping RenderLargeImage: ${VTK_NOT_FOUND_MESSAGE}")
  return ()
endif()
message (STATUS "VTK_VERSION: ${VTK_VERSION}")
if (VTK_VERSION VERSION_LESS "8.90.0")
  # old system
  include(${VTK_USE_FILE})
  add_executable(RenderLargeImage MACOSX_BUNDLE RenderLargeImage.cxx )
  target_link_libraries(RenderLargeImage PRIVATE ${VTK_LIBRARIES})
else ()
  # include all components
  add_executable(RenderLargeImage MACOSX_BUNDLE RenderLargeImage.cxx )
  target_link_libraries(RenderLargeImage PRIVATE ${VTK_LIBRARIES})
  # vtk_module_autoinit is needed
  vtk_module_autoinit(
    TARGETS RenderLargeImage
    MODULES ${VTK_LIBRARIES}
    )
endif () 
