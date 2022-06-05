#!/bin/bash


build_ros(){
cd /catkin_ws
rm -r devel build
#catkin build -qqqy
catkin_make -qqqy
}

build_ros




