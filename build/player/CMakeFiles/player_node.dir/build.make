# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_SOURCE_DIR = /home/alexander/robohockey/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alexander/robohockey/build

# Include any dependencies generated for this target.
include player/CMakeFiles/player_node.dir/depend.make

# Include the progress variables for this target.
include player/CMakeFiles/player_node.dir/progress.make

# Include the compile flags for this target's objects.
include player/CMakeFiles/player_node.dir/flags.make

player/CMakeFiles/player_node.dir/src/playnode.cpp.o: player/CMakeFiles/player_node.dir/flags.make
player/CMakeFiles/player_node.dir/src/playnode.cpp.o: /home/alexander/robohockey/src/player/src/playnode.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/alexander/robohockey/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object player/CMakeFiles/player_node.dir/src/playnode.cpp.o"
	cd /home/alexander/robohockey/build/player && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/player_node.dir/src/playnode.cpp.o -c /home/alexander/robohockey/src/player/src/playnode.cpp

player/CMakeFiles/player_node.dir/src/playnode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/player_node.dir/src/playnode.cpp.i"
	cd /home/alexander/robohockey/build/player && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/alexander/robohockey/src/player/src/playnode.cpp > CMakeFiles/player_node.dir/src/playnode.cpp.i

player/CMakeFiles/player_node.dir/src/playnode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/player_node.dir/src/playnode.cpp.s"
	cd /home/alexander/robohockey/build/player && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/alexander/robohockey/src/player/src/playnode.cpp -o CMakeFiles/player_node.dir/src/playnode.cpp.s

player/CMakeFiles/player_node.dir/src/playnode.cpp.o.requires:
.PHONY : player/CMakeFiles/player_node.dir/src/playnode.cpp.o.requires

player/CMakeFiles/player_node.dir/src/playnode.cpp.o.provides: player/CMakeFiles/player_node.dir/src/playnode.cpp.o.requires
	$(MAKE) -f player/CMakeFiles/player_node.dir/build.make player/CMakeFiles/player_node.dir/src/playnode.cpp.o.provides.build
.PHONY : player/CMakeFiles/player_node.dir/src/playnode.cpp.o.provides

player/CMakeFiles/player_node.dir/src/playnode.cpp.o.provides.build: player/CMakeFiles/player_node.dir/src/playnode.cpp.o

# Object files for target player_node
player_node_OBJECTS = \
"CMakeFiles/player_node.dir/src/playnode.cpp.o"

# External object files for target player_node
player_node_EXTERNAL_OBJECTS =

/home/alexander/robohockey/devel/lib/player/player_node: player/CMakeFiles/player_node.dir/src/playnode.cpp.o
/home/alexander/robohockey/devel/lib/player/player_node: player/CMakeFiles/player_node.dir/build.make
/home/alexander/robohockey/devel/lib/player/player_node: /opt/ros/jade/lib/libimage_transport.so
/home/alexander/robohockey/devel/lib/player/player_node: /opt/ros/jade/lib/libclass_loader.so
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/libPocoFoundation.so
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libdl.so
/home/alexander/robohockey/devel/lib/player/player_node: /opt/ros/jade/lib/libroslib.so
/home/alexander/robohockey/devel/lib/player/player_node: /opt/ros/jade/lib/librospack.so
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/alexander/robohockey/devel/lib/player/player_node: /opt/ros/jade/lib/libcv_bridge.so
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /opt/ros/jade/lib/libmessage_filters.so
/home/alexander/robohockey/devel/lib/player/player_node: /opt/ros/jade/lib/libroscpp.so
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/alexander/robohockey/devel/lib/player/player_node: /opt/ros/jade/lib/libroscpp_serialization.so
/home/alexander/robohockey/devel/lib/player/player_node: /opt/ros/jade/lib/libxmlrpcpp.so
/home/alexander/robohockey/devel/lib/player/player_node: /opt/ros/jade/lib/librosconsole.so
/home/alexander/robohockey/devel/lib/player/player_node: /opt/ros/jade/lib/librosconsole_log4cxx.so
/home/alexander/robohockey/devel/lib/player/player_node: /opt/ros/jade/lib/librosconsole_backend_interface.so
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/liblog4cxx.so
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/alexander/robohockey/devel/lib/player/player_node: /opt/ros/jade/lib/librostime.so
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/alexander/robohockey/devel/lib/player/player_node: /opt/ros/jade/lib/libcpp_common.so
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/alexander/robohockey/devel/lib/player/player_node: player/CMakeFiles/player_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/alexander/robohockey/devel/lib/player/player_node"
	cd /home/alexander/robohockey/build/player && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/player_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
player/CMakeFiles/player_node.dir/build: /home/alexander/robohockey/devel/lib/player/player_node
.PHONY : player/CMakeFiles/player_node.dir/build

player/CMakeFiles/player_node.dir/requires: player/CMakeFiles/player_node.dir/src/playnode.cpp.o.requires
.PHONY : player/CMakeFiles/player_node.dir/requires

player/CMakeFiles/player_node.dir/clean:
	cd /home/alexander/robohockey/build/player && $(CMAKE_COMMAND) -P CMakeFiles/player_node.dir/cmake_clean.cmake
.PHONY : player/CMakeFiles/player_node.dir/clean

player/CMakeFiles/player_node.dir/depend:
	cd /home/alexander/robohockey/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alexander/robohockey/src /home/alexander/robohockey/src/player /home/alexander/robohockey/build /home/alexander/robohockey/build/player /home/alexander/robohockey/build/player/CMakeFiles/player_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : player/CMakeFiles/player_node.dir/depend
