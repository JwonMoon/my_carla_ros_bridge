# my_carla_ros_bridge
Several modifications in [original carla-ros-bridge(ROS2)](https://carla.readthedocs.io/projects/ros-bridge/en/latest/ros_installation_ros2/)     
<br/>
## Modifications
1. Compatibility with different CARLA versions
   - added `export_path.sh` and `run_carla_bridge.sh` to use alias command
     ```bash
     alias run_carla_bridge="bash /home/misys/aw.universe/carla/my_carla_ros_bridge/run_carla_bridge.sh"
     ```
     <br/>
2. Different sizes of **carla_manual_control** display window
   - added `dp_ratio` in `carla_manual_control.py`
     ```python
     dp_ratio = 0.8
     ```
   - reduced `image_size_*` of `rgb_view` sensor in `objects.json` (ex. dp_ratio = 0.8)   
     ```json
     {
          "type": "sensor.camera.rgb",
          "id": "rgb_view",
          "image_size_x": 640,
          "image_size_y": 480
      },
     ```
