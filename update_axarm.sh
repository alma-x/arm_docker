#!/bin/bash

# definitions ###########################################

update_git(){
git pull -q
}

build_ros(){

	if [ -d /catkin_ws/devel/ ]; then
		rm -r /catkin_ws/devel/ 
	fi

	if [ -d /catkin_ws/build/ ]; then
		rm -r /catkin_ws/build/ 
	fi

	
	cd /catkin_ws
	#catkin build -qqqy
	catkin_make >/dev/null 2>&1
	# might wanna use catking clean instead
}
#######################################################

# update ros code for all subdirs that are git repositories
cd /catkin_ws/src/almax
for d in ./*/; do
	if [ -d "$d".git/ ]; then
		cd "$d" && update_git && cd ..;
	fi ;
done

# UPDATE 4: moved here since not running update_erc.sh
if [ -d /catkin_ws/src/erc/universal_robot/ur_msgs ]; then
	rm -r /catkin_ws/src/erc/universal_robot/ur_msgs;
fi

# UPDATE 3: moved build here since config_axarm.sh script called at each new cli
build_ros




