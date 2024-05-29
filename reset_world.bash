#!/bin/bash

python ~/rgp3_ws/src/arm_gazebo/scripts/gazebo_objects.py -d ~/rgp3_ws/src/arm_gazebo/config/ARMd.txt
python ~/rgp3_ws/src/arm_gazebo/scripts/gazebo_objects.py -a $1
