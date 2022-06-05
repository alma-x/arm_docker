#!/bin/bash

# definitions
update_git(){
git pull -qqq
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





