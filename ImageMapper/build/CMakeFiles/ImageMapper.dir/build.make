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
CMAKE_SOURCE_DIR = /home/hgj/Project/vtk_pro/ImageMapper

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hgj/Project/vtk_pro/ImageMapper/build

# Include any dependencies generated for this target.
include CMakeFiles/ImageMapper.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ImageMapper.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ImageMapper.dir/flags.make

CMakeFiles/ImageMapper.dir/ImageMapper.cxx.o: CMakeFiles/ImageMapper.dir/flags.make
CMakeFiles/ImageMapper.dir/ImageMapper.cxx.o: ../ImageMapper.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hgj/Project/vtk_pro/ImageMapper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ImageMapper.dir/ImageMapper.cxx.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ImageMapper.dir/ImageMapper.cxx.o -c /home/hgj/Project/vtk_pro/ImageMapper/ImageMapper.cxx

CMakeFiles/ImageMapper.dir/ImageMapper.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ImageMapper.dir/ImageMapper.cxx.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hgj/Project/vtk_pro/ImageMapper/ImageMapper.cxx > CMakeFiles/ImageMapper.dir/ImageMapper.cxx.i

CMakeFiles/ImageMapper.dir/ImageMapper.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ImageMapper.dir/ImageMapper.cxx.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hgj/Project/vtk_pro/ImageMapper/ImageMapper.cxx -o CMakeFiles/ImageMapper.dir/ImageMapper.cxx.s

CMakeFiles/ImageMapper.dir/ImageMapper.cxx.o.requires:

.PHONY : CMakeFiles/ImageMapper.dir/ImageMapper.cxx.o.requires

CMakeFiles/ImageMapper.dir/ImageMapper.cxx.o.provides: CMakeFiles/ImageMapper.dir/ImageMapper.cxx.o.requires
	$(MAKE) -f CMakeFiles/ImageMapper.dir/build.make CMakeFiles/ImageMapper.dir/ImageMapper.cxx.o.provides.build
.PHONY : CMakeFiles/ImageMapper.dir/ImageMapper.cxx.o.provides

CMakeFiles/ImageMapper.dir/ImageMapper.cxx.o.provides.build: CMakeFiles/ImageMapper.dir/ImageMapper.cxx.o


# Object files for target ImageMapper
ImageMapper_OBJECTS = \
"CMakeFiles/ImageMapper.dir/ImageMapper.cxx.o"

# External object files for target ImageMapper
ImageMapper_EXTERNAL_OBJECTS =

ImageMapper: CMakeFiles/ImageMapper.dir/ImageMapper.cxx.o
ImageMapper: CMakeFiles/ImageMapper.dir/build.make
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkInteractionStyle-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkFiltersExtraction-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkFiltersStatistics-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkImagingFourier-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkalglib-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkRenderingFreeType-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libfreetype.so
ImageMapper: /usr/lib/x86_64-linux-gnu/libz.so
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkRenderingOpenGL2-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkIOImage-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkDICOMParser-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkmetaio-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libjpeg.so
ImageMapper: /usr/lib/x86_64-linux-gnu/libpng.so
ImageMapper: /usr/lib/x86_64-linux-gnu/libtiff.so
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkImagingCore-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkRenderingCore-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkFiltersSources-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeneral-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkCommonComputationalGeometry-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkCommonColor-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeometry-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkFiltersCore-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkCommonExecutionModel-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkCommonDataModel-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkCommonTransforms-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkCommonMisc-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkCommonMath-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkCommonSystem-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtkCommonCore-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libvtksys-7.1.so.7.1.1
ImageMapper: /usr/lib/x86_64-linux-gnu/libz.so
ImageMapper: /usr/lib/x86_64-linux-gnu/libGLEW.so
ImageMapper: /usr/lib/x86_64-linux-gnu/libSM.so
ImageMapper: /usr/lib/x86_64-linux-gnu/libICE.so
ImageMapper: /usr/lib/x86_64-linux-gnu/libX11.so
ImageMapper: /usr/lib/x86_64-linux-gnu/libXext.so
ImageMapper: /usr/lib/x86_64-linux-gnu/libXt.so
ImageMapper: CMakeFiles/ImageMapper.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hgj/Project/vtk_pro/ImageMapper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ImageMapper"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ImageMapper.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ImageMapper.dir/build: ImageMapper

.PHONY : CMakeFiles/ImageMapper.dir/build

CMakeFiles/ImageMapper.dir/requires: CMakeFiles/ImageMapper.dir/ImageMapper.cxx.o.requires

.PHONY : CMakeFiles/ImageMapper.dir/requires

CMakeFiles/ImageMapper.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ImageMapper.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ImageMapper.dir/clean

CMakeFiles/ImageMapper.dir/depend:
	cd /home/hgj/Project/vtk_pro/ImageMapper/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hgj/Project/vtk_pro/ImageMapper /home/hgj/Project/vtk_pro/ImageMapper /home/hgj/Project/vtk_pro/ImageMapper/build /home/hgj/Project/vtk_pro/ImageMapper/build /home/hgj/Project/vtk_pro/ImageMapper/build/CMakeFiles/ImageMapper.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ImageMapper.dir/depend

