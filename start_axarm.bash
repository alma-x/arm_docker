#!/bin/bash

do_the_magic(){
	
	# update container tools
	echo "update container"
	/root/arm_docker/update_container.bash

	# update alma-x ros repo
	echo "update almax"
	#/root/arm_docker/update_axarm.bash

	# update erc ros repo
	echo "update erc"
	#/root/arm_docker/update_erc.bash

	# build and setup
	echo "build"
	#/root/arm_docker/config_axarm.bash

	# launch simulation
	#IF SOME_PARAM_FROM_arm_docker: lauch gazebo simulation
	#ELSE?

	# start almax arm routines
	#CAN I USE ROSLAUNCH HERE?
}

if [ ! -f /root/dummy.file ]; then
	touch /root/dummy.file
	do_the_magic
fi

# start cli
#bin/bash
