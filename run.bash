#!/bin/bash

# Launch the first xterm with ROS launch for the robot arm
xterm -e "bash -c 'roslaunch arm_gazebo arm_ur5.launch world:=$(rospack find arm_gazebo)/worlds/arm_empty.world x:=-0.10 y:=0 z:=0.615'" &

# Sleep to allow the first command to initialize properly
sleep 15

# Uncomment the following if you want to use moveit configuration
# xterm -e "bash -c 'roslaunch panda_moveit_config demo.launch load_robot_description:=false moveit_controller_manager:=simple use_rviz:=false'" &

# Sleep if needed before the next command, currently commented out
# sleep 5

# Launch the second xterm for rviz
xterm -e "bash -c 'cd src/arm_gazebo/config; rosrun rviz rviz -d robot_camera.rviz'" &

# Launch the third xterm for running scripts
xterm -e "bash -c 'cd src/arm_gazebo/scripts; python gazebo_objects.py -a ../config/ARM0.txt'" &

echo "Commands have been launched in separate terminals."