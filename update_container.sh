#!/bin/sh

# definitions
update_git(){
git pull -q
}

# update container tools 
cd /root/arm_docker
update_git

#if [ -f .bash_aliases ]; then
#	rm /root/.bash_aliases
#	cp .bash_aliases /root
#fi

#if [ -f .bashrc ]; then
#	rm /root/.bashrc
#	cp .bashrc /root && source /root/.bashrc
#fi


# update linux
#apt update -qqqy && apt upgrade -qqqy




