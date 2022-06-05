#!/bin/bash

# definitions
update_git(){
git pull -qqq
}

# update container tools 
cd /root/scripts/arm_docker
update_git

if [ -f .bash_aliases ]; then
	cp .bash_aliases /root
fi

if [ -f .bashrc ]; then
	cp .bashrc /root && source /root/.bashrc
fi


# update linux
#apt update -qqqy && apt upgrade -qqqy




