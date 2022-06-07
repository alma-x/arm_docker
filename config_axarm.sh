#!/bin/bash


build_ros(){

	echo "removing installation"
	sleep 1.5
	
	if [ -d /catkin_ws/devel/ ]; then
		rm -r /catkin_ws/devel/ 
	fi

	if [ -d /catkin_ws/build/ ]; then
		rm -r /catkin_ws/build/ 
	fi

	echo "building"
	sleep 1.5
	
	cd /catkin_ws
	#catkin build -qqqy
	catkin_make >/dev/null 2>&1
}

#build_ros

