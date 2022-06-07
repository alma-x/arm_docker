#!/bin/bash

# definitions
update_git(){
git pull -q
}

# update container tools 
cd /root/arm_docker
update_git

if [ -f /root/arm_docker/.bash_aliases ] ; then
	if ! cmp /root/arm_docker/.bash_aliases /root/.bash_aliases ; then
		rm /root/.bash_aliases
		cp /root/arm_docker/.bash_aliases /root
	fi
fi

if [ -f /root/arm_docker/.bashrc ] ; then
	if ! cmp /root/arm_docker/.bashrc /root/.bashrc ; then
		rm /root/.bashrc
		cp /root/arm_docker/.bashrc /root && source /root/.bashrc
	fi
fi

# UPDATE 1: REMOVE FROM HERE, MOVE TO HIGHER LEVEL SCRIPT
#source /root/.bashrc

# update linux
#apt update -qqqy && apt upgrade -qqqy


# UPDATE 2: ros update
apt install -y ros-noetic-moveit-visual-tools >/dev/null 2>&1




