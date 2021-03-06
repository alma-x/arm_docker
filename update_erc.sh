#!/bin/bash

# definitions ####################################
update_git(){
git pull -qqq
}

##################################################

# update ros code for all subdirs that are git repositories (.git/ exists)
cd /catkin_ws/src/erc
for d in ./*/; do
	if [ -d "$d".git/ ]; then
		cd "$d" && update_git && cd ..;
	fi ;
done

# removes unused messages if that folder exists
if [ -d /catkin_ws/src/erc/universal_robot/ur_msgs ]; then
	rm -r /catkin_ws/src/erc/universal_robot/ur_msgs;
fi

#cd ../UR3_sim
#update_git





