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
include CMakeFiles/TexturedSphere.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TexturedSphere.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TexturedSphere.dir/flags.make

CMakeFiles/TexturedSphere.dir/TexturedSphere.o: CMakeFiles/TexturedSphere.dir/flags.make
CMakeFiles/TexturedSphere.dir/TexturedSphere.o: ../TexturedSphere.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TexturedSphere.dir/TexturedSphere.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TexturedSphere.dir/TexturedSphere.o -c /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/TexturedSphere.cxx

CMakeFiles/TexturedSphere.dir/TexturedSphere.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TexturedSphere.dir/TexturedSphere.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/TexturedSphere.cxx > CMakeFiles/TexturedSphere.dir/TexturedSphere.i

CMakeFiles/TexturedSphere.dir/TexturedSphere.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TexturedSphere.dir/TexturedSphere.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/TexturedSphere.cxx -o CMakeFiles/TexturedSphere.dir/TexturedSphere.s

CMakeFiles/TexturedSphere.dir/TexturedSphere.o.requires:

.PHONY : CMakeFiles/TexturedSphere.dir/TexturedSphere.o.requires

CMakeFiles/TexturedSphere.dir/TexturedSphere.o.provides: CMakeFiles/TexturedSphere.dir/TexturedSphere.o.requires
	$(MAKE) -f CMakeFiles/TexturedSphere.dir/build.make CMakeFiles/TexturedSphere.dir/TexturedSphere.o.provides.build
.PHONY : CMakeFiles/TexturedSphere.dir/TexturedSphere.o.provides

CMakeFiles/TexturedSphere.dir/TexturedSphere.o.provides.build: CMakeFiles/TexturedSphere.dir/TexturedSphere.o


# Object files for target TexturedSphere
TexturedSphere_OBJECTS = \
"CMakeFiles/TexturedSphere.dir/TexturedSphere.o"

# External object files for target TexturedSphere
TexturedSphere_EXTERNAL_OBJECTS =

TexturedSphere: CMakeFiles/TexturedSphere.dir/TexturedSphere.o
TexturedSphere: CMakeFiles/TexturedSphere.dir/build.make
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkFiltersTexture-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libz.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libjpeg.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libpng.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libtiff.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkIOPLY-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkIOParallel-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkFiltersParallel-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkParallelCore-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkIONetCDF-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libnetcdf_c++.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libnetcdf.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/hdf5/openmpi/libhdf5.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libsz.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libdl.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libm.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/hdf5/openmpi/libhdf5_hl.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkexoIIc-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libjsoncpp.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkIOXML-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkIOXMLParser-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libexpat.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkImagingHybrid-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkInteractionStyle-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkRenderingContextOpenGL2-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkRenderingContext2D-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkRenderingFreeType-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libfreetype.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkRenderingGL2PSOpenGL2-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libgl2ps.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkTestingRendering-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkIOGeometry-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkFiltersModeling-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkIOLegacy-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libnetcdf_c++.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libnetcdf.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkIOCore-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkFiltersExtraction-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkFiltersStatistics-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkImagingFourier-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkalglib-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkRenderingOpenGL2-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libGLEW.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libSM.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libICE.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libX11.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libXext.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libXt.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkIOImage-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkDICOMParser-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkmetaio-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libz.so
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkImagingCore-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkRenderingCore-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkCommonColor-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeometry-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkFiltersSources-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeneral-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkFiltersCore-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkCommonExecutionModel-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkCommonComputationalGeometry-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkCommonDataModel-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkCommonMisc-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkCommonSystem-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtksys-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkCommonTransforms-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkCommonMath-7.1.so.7.1.1
TexturedSphere: /usr/lib/x86_64-linux-gnu/libvtkCommonCore-7.1.so.7.1.1
TexturedSphere: CMakeFiles/TexturedSphere.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TexturedSphere"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TexturedSphere.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TexturedSphere.dir/build: TexturedSphere

.PHONY : CMakeFiles/TexturedSphere.dir/build

CMakeFiles/TexturedSphere.dir/requires: CMakeFiles/TexturedSphere.dir/TexturedSphere.o.requires

.PHONY : CMakeFiles/TexturedSphere.dir/requires

CMakeFiles/TexturedSphere.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TexturedSphere.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TexturedSphere.dir/clean

CMakeFiles/TexturedSphere.dir/depend:
	cd /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/build /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/build /home/hgj/Project/vtk_pro/VTKExamples/src/Cxx/Texture/build/CMakeFiles/TexturedSphere.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TexturedSphere.dir/depend

