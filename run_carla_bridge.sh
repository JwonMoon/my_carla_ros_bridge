#!/bin/sh

# Function to clean up and exit when Ctrl+C is pressed
cleanup() {
    echo "Ctrl+C pressed, cleaning up..."
    
    # Terminate CARLA-ROS-BRIDGE if it's running
    pkill -f "CarlaUE4-Linux-"
    
    # Terminate CARLA Simulator if it's running
    pkill -f "CarlaUE4.sh"
    
    exit 1
}

# Set up Ctrl+C handler
trap cleanup INT

echo "================================================"
echo "   Run CARLA Simulator & CARLA-ROS-BRIDGE !!"
echo "================================================"

(cd /home/misys/aw.universe/carla/CARLA_0.9.13_RSS && ./CarlaUE4.sh &)
(cd /home/misys/aw.universe/carla/my_carla_ros_bridge && source /opt/ros/foxy/setup.bash && source install/setup.bash && source ./export_path.sh && ros2 launch carla_ros_bridge carla_ros_bridge_with_example_ego_vehicle.launch.py)

# Wait for the background processes to finish
wait
