#!/bin/sh

# definitions
update_git(){
git pull -q
}

# update container tools 
cd /root/arm_docker
update_git

if ! cmp /root/arm_docker/.bash_aliases root/.bash_aliases ; then
	rm /root/.bash_aliases
	cp /root/arm_docker/.bash_aliases /root
fi

if ! cmp /root/arm_docker/.bashrc root/.bashrc ; then
	rm /root/.bashrc
	cp /root/arm_docker/.bashrc /root && source /root/.bashrc
fi

source /root/.bashrc

# update linux
#apt update -qqqy && apt upgrade -qqqy




