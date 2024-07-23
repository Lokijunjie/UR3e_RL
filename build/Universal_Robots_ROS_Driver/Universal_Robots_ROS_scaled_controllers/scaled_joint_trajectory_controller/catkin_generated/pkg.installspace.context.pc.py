# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "controller_interface;hardware_interface;joint_trajectory_controller;pluginlib;realtime_tools;std_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lscaled_joint_trajectory_controller".split(';') if "-lscaled_joint_trajectory_controller" != "" else []
PROJECT_NAME = "scaled_joint_trajectory_controller"
PROJECT_SPACE_DIR = "/home/swjtu20/catkin_ws/install"
PROJECT_VERSION = "0.1.1"
