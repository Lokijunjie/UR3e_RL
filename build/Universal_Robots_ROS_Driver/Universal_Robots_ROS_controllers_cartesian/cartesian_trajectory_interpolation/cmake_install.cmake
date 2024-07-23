# Install script for directory: /home/swjtu20/catkin_ws/src/Universal_Robots_ROS_Driver/Universal_Robots_ROS_controllers_cartesian/cartesian_trajectory_interpolation

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/swjtu20/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/swjtu20/catkin_ws/build/Universal_Robots_ROS_Driver/Universal_Robots_ROS_controllers_cartesian/cartesian_trajectory_interpolation/catkin_generated/installspace/cartesian_trajectory_interpolation.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cartesian_trajectory_interpolation/cmake" TYPE FILE FILES
    "/home/swjtu20/catkin_ws/build/Universal_Robots_ROS_Driver/Universal_Robots_ROS_controllers_cartesian/cartesian_trajectory_interpolation/catkin_generated/installspace/cartesian_trajectory_interpolationConfig.cmake"
    "/home/swjtu20/catkin_ws/build/Universal_Robots_ROS_Driver/Universal_Robots_ROS_controllers_cartesian/cartesian_trajectory_interpolation/catkin_generated/installspace/cartesian_trajectory_interpolationConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cartesian_trajectory_interpolation" TYPE FILE FILES "/home/swjtu20/catkin_ws/src/Universal_Robots_ROS_Driver/Universal_Robots_ROS_controllers_cartesian/cartesian_trajectory_interpolation/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcartesian_trajectory_interpolation.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcartesian_trajectory_interpolation.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcartesian_trajectory_interpolation.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/swjtu20/catkin_ws/devel/lib/libcartesian_trajectory_interpolation.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcartesian_trajectory_interpolation.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcartesian_trajectory_interpolation.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcartesian_trajectory_interpolation.so"
         OLD_RPATH "/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcartesian_trajectory_interpolation.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cartesian_trajectory_interpolation" TYPE DIRECTORY FILES "/home/swjtu20/catkin_ws/src/Universal_Robots_ROS_Driver/Universal_Robots_ROS_controllers_cartesian/cartesian_trajectory_interpolation/include/cartesian_trajectory_interpolation/" FILES_MATCHING REGEX ".*\\.h(pp)?" REGEX "/\\.svn$" EXCLUDE)
endif()

