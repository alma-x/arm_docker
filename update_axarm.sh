#!/bin/bash

# definitions
update_git(){
git pull -q
}

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

# update ros code for all subdirs that are git repositories
cd /catkin_ws/src/almax
for d in ./*/; do
	if [ -d "$d".git/ ]; then
		cd "$d" && update_git && cd ..;
	fi ;
done

#cd /catkin_ws/src/almax/arm_logic
#update_git

#cd ../arm_vision
#update_git

#cd ../arm_control
#update_git


build_ros




