# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Annotation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Annotation/build

# Include any dependencies generated for this target.
include CMakeFiles/XYPlot.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/XYPlot.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/XYPlot.dir/flags.make

CMakeFiles/XYPlot.dir/XYPlot.o: CMakeFiles/XYPlot.dir/flags.make
CMakeFiles/XYPlot.dir/XYPlot.o: ../XYPlot.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Annotation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/XYPlot.dir/XYPlot.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/XYPlot.dir/XYPlot.o -c /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Annotation/XYPlot.cxx

CMakeFiles/XYPlot.dir/XYPlot.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/XYPlot.dir/XYPlot.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Annotation/XYPlot.cxx > CMakeFiles/XYPlot.dir/XYPlot.i

CMakeFiles/XYPlot.dir/XYPlot.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/XYPlot.dir/XYPlot.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Annotation/XYPlot.cxx -o CMakeFiles/XYPlot.dir/XYPlot.s

CMakeFiles/XYPlot.dir/XYPlot.o.requires:

.PHONY : CMakeFiles/XYPlot.dir/XYPlot.o.requires

CMakeFiles/XYPlot.dir/XYPlot.o.provides: CMakeFiles/XYPlot.dir/XYPlot.o.requires
	$(MAKE) -f CMakeFiles/XYPlot.dir/build.make CMakeFiles/XYPlot.dir/XYPlot.o.provides.build
.PHONY : CMakeFiles/XYPlot.dir/XYPlot.o.provides

CMakeFiles/XYPlot.dir/XYPlot.o.provides.build: CMakeFiles/XYPlot.dir/XYPlot.o


# Object files for target XYPlot
XYPlot_OBJECTS = \
"CMakeFiles/XYPlot.dir/XYPlot.o"

# External object files for target XYPlot
XYPlot_EXTERNAL_OBJECTS =

XYPlot: CMakeFiles/XYPlot.dir/XYPlot.o
XYPlot: CMakeFiles/XYPlot.dir/build.make
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkIOParallel-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkFiltersParallel-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkFiltersModeling-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libz.so
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkParallelCore-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkIOGeometry-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libjpeg.so
XYPlot: /usr/lib/x86_64-linux-gnu/libpng.so
XYPlot: /usr/lib/x86_64-linux-gnu/libtiff.so
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkIONetCDF-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libnetcdf_c++.so
XYPlot: /usr/lib/x86_64-linux-gnu/libnetcdf.so
XYPlot: /usr/lib/x86_64-linux-gnu/hdf5/openmpi/libhdf5.so
XYPlot: /usr/lib/x86_64-linux-gnu/libsz.so
XYPlot: /usr/lib/x86_64-linux-gnu/libdl.so
XYPlot: /usr/lib/x86_64-linux-gnu/libm.so
XYPlot: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
XYPlot: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
XYPlot: /usr/lib/x86_64-linux-gnu/hdf5/openmpi/libhdf5_hl.so
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkexoIIc-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libjsoncpp.so
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkInteractionStyle-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkRenderingAnnotation-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkImagingColor-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkRenderingFreeType-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libfreetype.so
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkRenderingOpenGL2-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkTestingRendering-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkIOLegacy-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkIOCore-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libnetcdf_c++.so
XYPlot: /usr/lib/x86_64-linux-gnu/libnetcdf.so
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkFiltersExtraction-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkFiltersStatistics-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkImagingFourier-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkalglib-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libGLEW.so
XYPlot: /usr/lib/x86_64-linux-gnu/libSM.so
XYPlot: /usr/lib/x86_64-linux-gnu/libICE.so
XYPlot: /usr/lib/x86_64-linux-gnu/libX11.so
XYPlot: /usr/lib/x86_64-linux-gnu/libXext.so
XYPlot: /usr/lib/x86_64-linux-gnu/libXt.so
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkImagingCore-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkRenderingCore-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkCommonColor-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkFiltersSources-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeneral-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkCommonComputationalGeometry-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeometry-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkFiltersCore-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkIOImage-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkCommonExecutionModel-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkCommonDataModel-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkCommonTransforms-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkCommonMisc-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkCommonMath-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkCommonSystem-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkCommonCore-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtksys-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkDICOMParser-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libvtkmetaio-7.1.so.7.1.1
XYPlot: /usr/lib/x86_64-linux-gnu/libz.so
XYPlot: CMakeFiles/XYPlot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Annotation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable XYPlot"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/XYPlot.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/XYPlot.dir/build: XYPlot

.PHONY : CMakeFiles/XYPlot.dir/build

CMakeFiles/XYPlot.dir/requires: CMakeFiles/XYPlot.dir/XYPlot.o.requires

.PHONY : CMakeFiles/XYPlot.dir/requires

CMakeFiles/XYPlot.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/XYPlot.dir/cmake_clean.cmake
.PHONY : CMakeFiles/XYPlot.dir/clean

CMakeFiles/XYPlot.dir/depend:
	cd /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Annotation/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Annotation /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Annotation /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Annotation/build /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Annotation/build /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Annotation/build/CMakeFiles/XYPlot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/XYPlot.dir/depend
