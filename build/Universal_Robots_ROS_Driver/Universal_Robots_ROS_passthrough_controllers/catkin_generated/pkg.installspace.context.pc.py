# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "actionlib;cartesian_control_msgs;cartesian_interface;control_msgs;controller_interface;controller_manager;dynamic_reconfigure;geometry_msgs;hardware_interface;pluginlib;roscpp;speed_scaling_interface;trajectory_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lpass_through_controllers".split(';') if "-lpass_through_controllers" != "" else []
PROJECT_NAME = "pass_through_controllers"
PROJECT_SPACE_DIR = "/home/swjtu20/catkin_ws/install"
PROJECT_VERSION = "0.1.0"
