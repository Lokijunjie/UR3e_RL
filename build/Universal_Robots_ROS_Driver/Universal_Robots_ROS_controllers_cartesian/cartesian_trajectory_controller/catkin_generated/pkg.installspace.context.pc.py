# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "cartesian_interface;cartesian_trajectory_interpolation;controller_manager;hardware_interface;kdl_parser;pluginlib;roscpp;rospy;speed_scaling_interface".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lcartesian_trajectory_controller;-lik_solver_example".split(';') if "-lcartesian_trajectory_controller;-lik_solver_example" != "" else []
PROJECT_NAME = "cartesian_trajectory_controller"
PROJECT_SPACE_DIR = "/home/swjtu20/catkin_ws/install"
PROJECT_VERSION = "0.1.6"
