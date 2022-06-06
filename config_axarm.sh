#!/bin/bash


build_ros(){

if [ -f /catkin_ws/devel/ ]; then
	rm -r /catkin_ws/devel/ 
if

if [ -f /catkin_ws/build/ ]; then
	rm -r /catkin_ws/build/ 
if

#catkin build -qqqy
cd /catkin_ws
catkin_make -q
}

build_ros

