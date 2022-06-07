#!/bin/bash


build_ros(){

if [ -d /catkin_ws/devel/ ]; then
	rm -r /catkin_ws/devel/ 
fi

if [ -d /catkin_ws/build/ ]; then
	rm -r /catkin_ws/build/ 
fi

#catkin build -qqqy
cd /catkin_ws
catkin_make >/dev/null 2>&1
}

build_ros

