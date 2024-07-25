import rospy
import tf2_ros
import tf2_geometry_msgs  # 需要安装：pip install tf2_ros tf2_geometry_msgs

def get_end_effector_position(event):
    # 创建一个 tf2 缓存和监听器
    tf_buffer = tf2_ros.Buffer()
    listener = tf2_ros.TransformListener(tf_buffer)

    try:
        # 获取从 base_link 到 wrist_3_link 的变换
        transform = tf_buffer.lookup_transform('base_link', 'wrist_3_link', rospy.Time(0), rospy.Duration(4.0))
        
        # 提取位置坐标
        position = {
            'x': transform.transform.translation.x,
            'y': transform.transform.translation.y,
            'z': transform.transform.translation.z
        }
        
        # 打印位置信息
        rospy.loginfo("End Effector Position: x: {}, y: {}, z: {}".format(position['x'], position['y'], position['z']))
    except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
        rospy.logerr("Could not transform between /base_link and /wrist_3_link")

if __name__ == '__main__':
    rospy.init_node('end_effector_position_listener', anonymous=True)

    # 创建一个 tf2 缓存和监听器
    tf_buffer = tf2_ros.Buffer()
    listener = tf2_ros.TransformListener(tf_buffer)

    # 等待 tf2 变换广播
    rospy.sleep(2)  # 给 tf2 一些时间来接收和缓存变换

    # 创建一个定时器，每隔1秒调用一次get_end_effector_position函数
    rospy.Timer(rospy.Duration(1), get_end_effector_position)

    # 保持节点运行
    rospy.spin()
