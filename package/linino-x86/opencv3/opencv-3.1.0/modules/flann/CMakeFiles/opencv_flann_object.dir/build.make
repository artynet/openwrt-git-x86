# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

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
CMAKE_COMMAND = /home/arturo/Scaricati/openwrt-15.05-x86/staging_dir/host/bin/cmake

# The command to remove a file.
RM = /home/arturo/Scaricati/openwrt-15.05-x86/staging_dir/host/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0

# Include any dependencies generated for this target.
include modules/flann/CMakeFiles/opencv_flann_object.dir/depend.make

# Include the progress variables for this target.
include modules/flann/CMakeFiles/opencv_flann_object.dir/progress.make

# Include the compile flags for this target's objects.
include modules/flann/CMakeFiles/opencv_flann_object.dir/flags.make

modules/flann/CMakeFiles/opencv_flann_object.dir/src/flann.cpp.o: modules/flann/CMakeFiles/opencv_flann_object.dir/flags.make
modules/flann/CMakeFiles/opencv_flann_object.dir/src/flann.cpp.o: modules/flann/src/flann.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/flann/CMakeFiles/opencv_flann_object.dir/src/flann.cpp.o"
	cd /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/flann && /usr/bin/ccache i486-openwrt-linux-uclibc-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_flann_object.dir/src/flann.cpp.o -c /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/flann/src/flann.cpp

modules/flann/CMakeFiles/opencv_flann_object.dir/src/flann.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_flann_object.dir/src/flann.cpp.i"
	cd /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/flann && /usr/bin/ccache i486-openwrt-linux-uclibc-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/flann/src/flann.cpp > CMakeFiles/opencv_flann_object.dir/src/flann.cpp.i

modules/flann/CMakeFiles/opencv_flann_object.dir/src/flann.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_flann_object.dir/src/flann.cpp.s"
	cd /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/flann && /usr/bin/ccache i486-openwrt-linux-uclibc-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/flann/src/flann.cpp -o CMakeFiles/opencv_flann_object.dir/src/flann.cpp.s

modules/flann/CMakeFiles/opencv_flann_object.dir/src/flann.cpp.o.requires:

.PHONY : modules/flann/CMakeFiles/opencv_flann_object.dir/src/flann.cpp.o.requires

modules/flann/CMakeFiles/opencv_flann_object.dir/src/flann.cpp.o.provides: modules/flann/CMakeFiles/opencv_flann_object.dir/src/flann.cpp.o.requires
	$(MAKE) -f modules/flann/CMakeFiles/opencv_flann_object.dir/build.make modules/flann/CMakeFiles/opencv_flann_object.dir/src/flann.cpp.o.provides.build
.PHONY : modules/flann/CMakeFiles/opencv_flann_object.dir/src/flann.cpp.o.provides

modules/flann/CMakeFiles/opencv_flann_object.dir/src/flann.cpp.o.provides.build: modules/flann/CMakeFiles/opencv_flann_object.dir/src/flann.cpp.o


modules/flann/CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.o: modules/flann/CMakeFiles/opencv_flann_object.dir/flags.make
modules/flann/CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.o: modules/flann/src/miniflann.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/flann/CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.o"
	cd /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/flann && /usr/bin/ccache i486-openwrt-linux-uclibc-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.o -c /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/flann/src/miniflann.cpp

modules/flann/CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.i"
	cd /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/flann && /usr/bin/ccache i486-openwrt-linux-uclibc-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/flann/src/miniflann.cpp > CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.i

modules/flann/CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.s"
	cd /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/flann && /usr/bin/ccache i486-openwrt-linux-uclibc-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/flann/src/miniflann.cpp -o CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.s

modules/flann/CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.o.requires:

.PHONY : modules/flann/CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.o.requires

modules/flann/CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.o.provides: modules/flann/CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.o.requires
	$(MAKE) -f modules/flann/CMakeFiles/opencv_flann_object.dir/build.make modules/flann/CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.o.provides.build
.PHONY : modules/flann/CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.o.provides

modules/flann/CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.o.provides.build: modules/flann/CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.o


opencv_flann_object: modules/flann/CMakeFiles/opencv_flann_object.dir/src/flann.cpp.o
opencv_flann_object: modules/flann/CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.o
opencv_flann_object: modules/flann/CMakeFiles/opencv_flann_object.dir/build.make

.PHONY : opencv_flann_object

# Rule to build all files generated by this target.
modules/flann/CMakeFiles/opencv_flann_object.dir/build: opencv_flann_object

.PHONY : modules/flann/CMakeFiles/opencv_flann_object.dir/build

modules/flann/CMakeFiles/opencv_flann_object.dir/requires: modules/flann/CMakeFiles/opencv_flann_object.dir/src/flann.cpp.o.requires
modules/flann/CMakeFiles/opencv_flann_object.dir/requires: modules/flann/CMakeFiles/opencv_flann_object.dir/src/miniflann.cpp.o.requires

.PHONY : modules/flann/CMakeFiles/opencv_flann_object.dir/requires

modules/flann/CMakeFiles/opencv_flann_object.dir/clean:
	cd /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/flann && $(CMAKE_COMMAND) -P CMakeFiles/opencv_flann_object.dir/cmake_clean.cmake
.PHONY : modules/flann/CMakeFiles/opencv_flann_object.dir/clean

modules/flann/CMakeFiles/opencv_flann_object.dir/depend:
	cd /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0 /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/flann /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0 /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/flann /home/arturo/Scaricati/openwrt-15.05-x86/package/linino-x86/opencv3/opencv-3.1.0/modules/flann/CMakeFiles/opencv_flann_object.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/flann/CMakeFiles/opencv_flann_object.dir/depend

