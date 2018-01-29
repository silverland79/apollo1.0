# - Config file for the orocos-kdl package
# It defines the following variables
#  orocos_kdl_INCLUDE_DIRS - include directories for Orocos KDL
#  orocos_kdl_LIBRARIES    - libraries to link against for Orocos KDL
#  orocos_kdl_PKGCONFIG_DIR - directory containing the .pc pkgconfig files

# Compute paths
get_filename_component(SELF_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(orocos_kdl_INCLUDE_DIRS "/usr/include/eigen3;/apollo/third_party/ros_x86_64/include")

if(NOT TARGET orocos-kdl)
  include("${SELF_DIR}/OrocosKDLTargets.cmake")
endif()

set(orocos_kdl_LIBRARIES orocos-kdl)

# where the .pc pkgconfig files are installed
set(orocos_kdl_PKGCONFIG_DIR "/apollo/third_party/ros_x86_64/lib/pkgconfig")
