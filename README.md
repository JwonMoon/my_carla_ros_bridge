# my_carla_ros_bridge
Several modifications in [ carla-ros-bridge ]   
(install original carla-ros-bridge(ROS2) : https://carla.readthedocs.io/projects/ros-bridge/en/latest/ros_installation_ros2/)

### Modifications
- Changing size of carla_manual_control display   

&emsp;&emsp;1. changed `image_size_x`, `image_size_y` of 'rgb_view' sensor in `objects.json`   
<pre> (800, 600) ⮕ (400, 300) </pre>

&emsp;&emsp;2. added `dp_ratio` in `carla_manual_control.py`
<pre> dp_ratio = 0.5 </pre>
