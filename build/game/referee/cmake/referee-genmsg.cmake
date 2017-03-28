# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "referee: 0 messages, 3 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/jade/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/jade/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(referee_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/alexander/robohockey/src/game/referee/srv/SendColor.srv" NAME_WE)
add_custom_target(_referee_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "referee" "/home/alexander/robohockey/src/game/referee/srv/SendColor.srv" ""
)

get_filename_component(_filename "/home/alexander/robohockey/src/game/referee/srv/TeamReady.srv" NAME_WE)
add_custom_target(_referee_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "referee" "/home/alexander/robohockey/src/game/referee/srv/TeamReady.srv" ""
)

get_filename_component(_filename "/home/alexander/robohockey/src/game/referee/srv/SendDimensions.srv" NAME_WE)
add_custom_target(_referee_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "referee" "/home/alexander/robohockey/src/game/referee/srv/SendDimensions.srv" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(referee
  "/home/alexander/robohockey/src/game/referee/srv/SendColor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/referee
)
_generate_srv_cpp(referee
  "/home/alexander/robohockey/src/game/referee/srv/TeamReady.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/referee
)
_generate_srv_cpp(referee
  "/home/alexander/robohockey/src/game/referee/srv/SendDimensions.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/referee
)

### Generating Module File
_generate_module_cpp(referee
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/referee
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(referee_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(referee_generate_messages referee_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alexander/robohockey/src/game/referee/srv/SendColor.srv" NAME_WE)
add_dependencies(referee_generate_messages_cpp _referee_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/robohockey/src/game/referee/srv/TeamReady.srv" NAME_WE)
add_dependencies(referee_generate_messages_cpp _referee_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/robohockey/src/game/referee/srv/SendDimensions.srv" NAME_WE)
add_dependencies(referee_generate_messages_cpp _referee_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(referee_gencpp)
add_dependencies(referee_gencpp referee_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS referee_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(referee
  "/home/alexander/robohockey/src/game/referee/srv/SendColor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/referee
)
_generate_srv_eus(referee
  "/home/alexander/robohockey/src/game/referee/srv/TeamReady.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/referee
)
_generate_srv_eus(referee
  "/home/alexander/robohockey/src/game/referee/srv/SendDimensions.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/referee
)

### Generating Module File
_generate_module_eus(referee
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/referee
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(referee_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(referee_generate_messages referee_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alexander/robohockey/src/game/referee/srv/SendColor.srv" NAME_WE)
add_dependencies(referee_generate_messages_eus _referee_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/robohockey/src/game/referee/srv/TeamReady.srv" NAME_WE)
add_dependencies(referee_generate_messages_eus _referee_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/robohockey/src/game/referee/srv/SendDimensions.srv" NAME_WE)
add_dependencies(referee_generate_messages_eus _referee_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(referee_geneus)
add_dependencies(referee_geneus referee_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS referee_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(referee
  "/home/alexander/robohockey/src/game/referee/srv/SendColor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/referee
)
_generate_srv_lisp(referee
  "/home/alexander/robohockey/src/game/referee/srv/TeamReady.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/referee
)
_generate_srv_lisp(referee
  "/home/alexander/robohockey/src/game/referee/srv/SendDimensions.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/referee
)

### Generating Module File
_generate_module_lisp(referee
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/referee
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(referee_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(referee_generate_messages referee_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alexander/robohockey/src/game/referee/srv/SendColor.srv" NAME_WE)
add_dependencies(referee_generate_messages_lisp _referee_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/robohockey/src/game/referee/srv/TeamReady.srv" NAME_WE)
add_dependencies(referee_generate_messages_lisp _referee_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/robohockey/src/game/referee/srv/SendDimensions.srv" NAME_WE)
add_dependencies(referee_generate_messages_lisp _referee_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(referee_genlisp)
add_dependencies(referee_genlisp referee_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS referee_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(referee
  "/home/alexander/robohockey/src/game/referee/srv/SendColor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/referee
)
_generate_srv_py(referee
  "/home/alexander/robohockey/src/game/referee/srv/TeamReady.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/referee
)
_generate_srv_py(referee
  "/home/alexander/robohockey/src/game/referee/srv/SendDimensions.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/jade/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/referee
)

### Generating Module File
_generate_module_py(referee
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/referee
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(referee_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(referee_generate_messages referee_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alexander/robohockey/src/game/referee/srv/SendColor.srv" NAME_WE)
add_dependencies(referee_generate_messages_py _referee_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/robohockey/src/game/referee/srv/TeamReady.srv" NAME_WE)
add_dependencies(referee_generate_messages_py _referee_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alexander/robohockey/src/game/referee/srv/SendDimensions.srv" NAME_WE)
add_dependencies(referee_generate_messages_py _referee_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(referee_genpy)
add_dependencies(referee_genpy referee_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS referee_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/referee)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/referee
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(referee_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(referee_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/referee)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/referee
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(referee_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(referee_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/referee)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/referee
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(referee_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(referee_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/referee)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/referee\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/referee
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(referee_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(referee_generate_messages_py geometry_msgs_generate_messages_py)
endif()
