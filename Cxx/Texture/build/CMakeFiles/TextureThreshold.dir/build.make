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
CMAKE_SOURCE_DIR = /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/build

# Include any dependencies generated for this target.
include CMakeFiles/TextureThreshold.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TextureThreshold.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TextureThreshold.dir/flags.make

CMakeFiles/TextureThreshold.dir/TextureThreshold.o: CMakeFiles/TextureThreshold.dir/flags.make
CMakeFiles/TextureThreshold.dir/TextureThreshold.o: ../TextureThreshold.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TextureThreshold.dir/TextureThreshold.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TextureThreshold.dir/TextureThreshold.o -c /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/TextureThreshold.cxx

CMakeFiles/TextureThreshold.dir/TextureThreshold.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TextureThreshold.dir/TextureThreshold.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/TextureThreshold.cxx > CMakeFiles/TextureThreshold.dir/TextureThreshold.i

CMakeFiles/TextureThreshold.dir/TextureThreshold.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TextureThreshold.dir/TextureThreshold.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/TextureThreshold.cxx -o CMakeFiles/TextureThreshold.dir/TextureThreshold.s

CMakeFiles/TextureThreshold.dir/TextureThreshold.o.requires:

.PHONY : CMakeFiles/TextureThreshold.dir/TextureThreshold.o.requires

CMakeFiles/TextureThreshold.dir/TextureThreshold.o.provides: CMakeFiles/TextureThreshold.dir/TextureThreshold.o.requires
	$(MAKE) -f CMakeFiles/TextureThreshold.dir/build.make CMakeFiles/TextureThreshold.dir/TextureThreshold.o.provides.build
.PHONY : CMakeFiles/TextureThreshold.dir/TextureThreshold.o.provides

CMakeFiles/TextureThreshold.dir/TextureThreshold.o.provides.build: CMakeFiles/TextureThreshold.dir/TextureThreshold.o


# Object files for target TextureThreshold
TextureThreshold_OBJECTS = \
"CMakeFiles/TextureThreshold.dir/TextureThreshold.o"

# External object files for target TextureThreshold
TextureThreshold_EXTERNAL_OBJECTS =

TextureThreshold: CMakeFiles/TextureThreshold.dir/TextureThreshold.o
TextureThreshold: CMakeFiles/TextureThreshold.dir/build.make
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkFiltersTexture-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libz.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libjpeg.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libpng.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libtiff.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkIOPLY-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkIOParallel-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkFiltersParallel-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkParallelCore-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkIONetCDF-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libnetcdf_c++.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libnetcdf.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/hdf5/openmpi/libhdf5.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libsz.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libdl.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libm.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/hdf5/openmpi/libhdf5_hl.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkexoIIc-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libjsoncpp.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkIOXML-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkIOXMLParser-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libexpat.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkImagingHybrid-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkInteractionStyle-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkRenderingContextOpenGL2-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkRenderingContext2D-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkRenderingFreeType-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libfreetype.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkRenderingGL2PSOpenGL2-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libgl2ps.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkTestingRendering-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkIOGeometry-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkFiltersModeling-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkIOLegacy-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libnetcdf_c++.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libnetcdf.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkIOCore-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkFiltersExtraction-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkFiltersStatistics-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkImagingFourier-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkalglib-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkRenderingOpenGL2-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libGLEW.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libSM.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libICE.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libX11.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libXext.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libXt.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkIOImage-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkDICOMParser-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkmetaio-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libz.so
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkImagingCore-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkRenderingCore-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkCommonColor-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeometry-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkFiltersSources-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeneral-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkFiltersCore-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkCommonExecutionModel-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkCommonComputationalGeometry-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkCommonDataModel-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkCommonMisc-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkCommonSystem-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtksys-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkCommonTransforms-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkCommonMath-7.1.so.7.1.1
TextureThreshold: /usr/lib/x86_64-linux-gnu/libvtkCommonCore-7.1.so.7.1.1
TextureThreshold: CMakeFiles/TextureThreshold.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TextureThreshold"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TextureThreshold.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TextureThreshold.dir/build: TextureThreshold

.PHONY : CMakeFiles/TextureThreshold.dir/build

CMakeFiles/TextureThreshold.dir/requires: CMakeFiles/TextureThreshold.dir/TextureThreshold.o.requires

.PHONY : CMakeFiles/TextureThreshold.dir/requires

CMakeFiles/TextureThreshold.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TextureThreshold.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TextureThreshold.dir/clean

CMakeFiles/TextureThreshold.dir/depend:
	cd /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/build /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/build /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/build/CMakeFiles/TextureThreshold.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TextureThreshold.dir/depend
