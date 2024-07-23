# Install script for directory: /home/swjtu20/catkin_ws/src/Universal_Robots_ROS_Driver/Universal_Robots_ROS_cartesian_control_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cartesian_control_msgs/msg" TYPE FILE FILES
    "/home/swjtu20/catkin_ws/src/Universal_Robots_ROS_Driver/Universal_Robots_ROS_cartesian_control_msgs/msg/CartesianPosture.msg"
    "/home/swjtu20/catkin_ws/src/Universal_Robots_ROS_Driver/Universal_Robots_ROS_cartesian_control_msgs/msg/CartesianTolerance.msg"
    "/home/swjtu20/catkin_ws/src/Universal_Robots_ROS_Driver/Universal_Robots_ROS_cartesian_control_msgs/msg/CartesianTrajectory.msg"
    "/home/swjtu20/catkin_ws/src/Universal_Robots_ROS_Driver/Universal_Robots_ROS_cartesian_control_msgs/msg/CartesianTrajectoryPoint.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cartesian_control_msgs/action" TYPE FILE FILES "/home/swjtu20/catkin_ws/src/Universal_Robots_ROS_Driver/Universal_Robots_ROS_cartesian_control_msgs/action/FollowCartesianTrajectory.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cartesian_control_msgs/msg" TYPE FILE FILES
    "/home/swjtu20/catkin_ws/devel/share/cartesian_control_msgs/msg/FollowCartesianTrajectoryAction.msg"
    "/home/swjtu20/catkin_ws/devel/share/cartesian_control_msgs/msg/FollowCartesianTrajectoryActionGoal.msg"
    "/home/swjtu20/catkin_ws/devel/share/cartesian_control_msgs/msg/FollowCartesianTrajectoryActionResult.msg"
    "/home/swjtu20/catkin_ws/devel/share/cartesian_control_msgs/msg/FollowCartesianTrajectoryActionFeedback.msg"
    "/home/swjtu20/catkin_ws/devel/share/cartesian_control_msgs/msg/FollowCartesianTrajectoryGoal.msg"
    "/home/swjtu20/catkin_ws/devel/share/cartesian_control_msgs/msg/FollowCartesianTrajectoryResult.msg"
    "/home/swjtu20/catkin_ws/devel/share/cartesian_control_msgs/msg/FollowCartesianTrajectoryFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cartesian_control_msgs/cmake" TYPE FILE FILES "/home/swjtu20/catkin_ws/build/Universal_Robots_ROS_Driver/Universal_Robots_ROS_cartesian_control_msgs/catkin_generated/installspace/cartesian_control_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/swjtu20/catkin_ws/devel/include/cartesian_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/swjtu20/catkin_ws/devel/share/roseus/ros/cartesian_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/swjtu20/catkin_ws/devel/share/common-lisp/ros/cartesian_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/swjtu20/catkin_ws/devel/share/gennodejs/ros/cartesian_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/swjtu20/catkin_ws/devel/lib/python3/dist-packages/cartesian_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/swjtu20/catkin_ws/devel/lib/python3/dist-packages/cartesian_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/swjtu20/catkin_ws/build/Universal_Robots_ROS_Driver/Universal_Robots_ROS_cartesian_control_msgs/catkin_generated/installspace/cartesian_control_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cartesian_control_msgs/cmake" TYPE FILE FILES "/home/swjtu20/catkin_ws/build/Universal_Robots_ROS_Driver/Universal_Robots_ROS_cartesian_control_msgs/catkin_generated/installspace/cartesian_control_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cartesian_control_msgs/cmake" TYPE FILE FILES
    "/home/swjtu20/catkin_ws/build/Universal_Robots_ROS_Driver/Universal_Robots_ROS_cartesian_control_msgs/catkin_generated/installspace/cartesian_control_msgsConfig.cmake"
    "/home/swjtu20/catkin_ws/build/Universal_Robots_ROS_Driver/Universal_Robots_ROS_cartesian_control_msgs/catkin_generated/installspace/cartesian_control_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cartesian_control_msgs" TYPE FILE FILES "/home/swjtu20/catkin_ws/src/Universal_Robots_ROS_Driver/Universal_Robots_ROS_cartesian_control_msgs/package.xml")
endif()

