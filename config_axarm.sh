#!/bin/bash


build_ros(){

if [ -f /catkin_ws/devel/ ]; then
	rm -r /catkin_ws/devel/ 
fi

if [ -f /catkin_ws/build/ ]; then
	rm -r /catkin_ws/build/ 
fi

#catkin build -qqqy
cd /catkin_ws
catkin_make -q
}

build_ros

