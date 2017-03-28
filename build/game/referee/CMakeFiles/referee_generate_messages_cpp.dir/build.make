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

# Utility rule file for referee_generate_messages_cpp.

# Include the progress variables for this target.
include game/referee/CMakeFiles/referee_generate_messages_cpp.dir/progress.make

game/referee/CMakeFiles/referee_generate_messages_cpp: /home/alexander/robohockey/devel/include/referee/SendColor.h
game/referee/CMakeFiles/referee_generate_messages_cpp: /home/alexander/robohockey/devel/include/referee/TeamReady.h
game/referee/CMakeFiles/referee_generate_messages_cpp: /home/alexander/robohockey/devel/include/referee/SendDimensions.h

/home/alexander/robohockey/devel/include/referee/SendColor.h: /opt/ros/jade/lib/gencpp/gen_cpp.py
/home/alexander/robohockey/devel/include/referee/SendColor.h: /home/alexander/robohockey/src/game/referee/srv/SendColor.srv
/home/alexander/robohockey/devel/include/referee/SendColor.h: /opt/ros/jade/share/gencpp/msg.h.template
/home/alexander/robohockey/devel/include/referee/SendColor.h: /opt/ros/jade/share/gencpp/srv.h.template
	$(CMAKE_COMMAND) -E cmake_progress_report /home/alexander/robohockey/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating C++ code from referee/SendColor.srv"
	cd /home/alexander/robohockey/build/game/referee && ../../catkin_generated/env_cached.sh /usr/bin/python /opt/ros/jade/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/alexander/robohockey/src/game/referee/srv/SendColor.srv -Istd_msgs:/opt/ros/jade/share/std_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/jade/share/geometry_msgs/cmake/../msg -p referee -o /home/alexander/robohockey/devel/include/referee -e /opt/ros/jade/share/gencpp/cmake/..

/home/alexander/robohockey/devel/include/referee/TeamReady.h: /opt/ros/jade/lib/gencpp/gen_cpp.py
/home/alexander/robohockey/devel/include/referee/TeamReady.h: /home/alexander/robohockey/src/game/referee/srv/TeamReady.srv
/home/alexander/robohockey/devel/include/referee/TeamReady.h: /opt/ros/jade/share/gencpp/msg.h.template
/home/alexander/robohockey/devel/include/referee/TeamReady.h: /opt/ros/jade/share/gencpp/srv.h.template
	$(CMAKE_COMMAND) -E cmake_progress_report /home/alexander/robohockey/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating C++ code from referee/TeamReady.srv"
	cd /home/alexander/robohockey/build/game/referee && ../../catkin_generated/env_cached.sh /usr/bin/python /opt/ros/jade/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/alexander/robohockey/src/game/referee/srv/TeamReady.srv -Istd_msgs:/opt/ros/jade/share/std_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/jade/share/geometry_msgs/cmake/../msg -p referee -o /home/alexander/robohockey/devel/include/referee -e /opt/ros/jade/share/gencpp/cmake/..

/home/alexander/robohockey/devel/include/referee/SendDimensions.h: /opt/ros/jade/lib/gencpp/gen_cpp.py
/home/alexander/robohockey/devel/include/referee/SendDimensions.h: /home/alexander/robohockey/src/game/referee/srv/SendDimensions.srv
/home/alexander/robohockey/devel/include/referee/SendDimensions.h: /opt/ros/jade/share/geometry_msgs/msg/Point.msg
/home/alexander/robohockey/devel/include/referee/SendDimensions.h: /opt/ros/jade/share/gencpp/msg.h.template
/home/alexander/robohockey/devel/include/referee/SendDimensions.h: /opt/ros/jade/share/gencpp/srv.h.template
	$(CMAKE_COMMAND) -E cmake_progress_report /home/alexander/robohockey/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating C++ code from referee/SendDimensions.srv"
	cd /home/alexander/robohockey/build/game/referee && ../../catkin_generated/env_cached.sh /usr/bin/python /opt/ros/jade/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/alexander/robohockey/src/game/referee/srv/SendDimensions.srv -Istd_msgs:/opt/ros/jade/share/std_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/jade/share/geometry_msgs/cmake/../msg -p referee -o /home/alexander/robohockey/devel/include/referee -e /opt/ros/jade/share/gencpp/cmake/..

referee_generate_messages_cpp: game/referee/CMakeFiles/referee_generate_messages_cpp
referee_generate_messages_cpp: /home/alexander/robohockey/devel/include/referee/SendColor.h
referee_generate_messages_cpp: /home/alexander/robohockey/devel/include/referee/TeamReady.h
referee_generate_messages_cpp: /home/alexander/robohockey/devel/include/referee/SendDimensions.h
referee_generate_messages_cpp: game/referee/CMakeFiles/referee_generate_messages_cpp.dir/build.make
.PHONY : referee_generate_messages_cpp

# Rule to build all files generated by this target.
game/referee/CMakeFiles/referee_generate_messages_cpp.dir/build: referee_generate_messages_cpp
.PHONY : game/referee/CMakeFiles/referee_generate_messages_cpp.dir/build

game/referee/CMakeFiles/referee_generate_messages_cpp.dir/clean:
	cd /home/alexander/robohockey/build/game/referee && $(CMAKE_COMMAND) -P CMakeFiles/referee_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : game/referee/CMakeFiles/referee_generate_messages_cpp.dir/clean

game/referee/CMakeFiles/referee_generate_messages_cpp.dir/depend:
	cd /home/alexander/robohockey/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alexander/robohockey/src /home/alexander/robohockey/src/game/referee /home/alexander/robohockey/build /home/alexander/robohockey/build/game/referee /home/alexander/robohockey/build/game/referee/CMakeFiles/referee_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : game/referee/CMakeFiles/referee_generate_messages_cpp.dir/depend
