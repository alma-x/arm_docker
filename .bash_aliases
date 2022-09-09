# BASH ALIASES
#$SCRIPTS='$HOME/.scripts'

# BASH

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias cd..='cd ..'
alias cd...='cd ../..'

# EDITOR
#alias nano="nano -m"
# sta causando problemi col tasto destro?
alias code="code --no-sandbox --user-data-dir /root/code_ws"

# PACKAGES
alias apthistory='less /var/log/apt/history.log'

# CONFIGURATION
alias bashconfigure="source $HOME/.bashrc"
alias cleanconfig="if [ -f /root/dummy.file ]; then rm /root/dummy.file; fi"
alias updateax=/root/arm_docker/update_axarm.sh && /root/arm_docker/config_axarm.sh

# DOCUMENTATION
alias manual="cat /root/arm_docker/documentation/axarm_manual.txt"

# WORKSPACES
alias cdcode="cd /catkin_ws/src"
alias cdax="cd /catkin_ws/src/almax"

# OPERATIONS
alias axinit="roslaunch arm_logic init.launch"
alias axvision="roslaunch arm_vision vision.launch"
alias axcontrol="roslaunch arm_control control.launch"
alias axlogic="roslaunch arm_logic logic.launch"
alias axobj1="roslaunch arm_logic objective1.launch"
alias axobj2='roslaunch arm_logic objective2.launch tags:="1 2 3 4"'
alias axobj3="roslaunch arm_logic objective3.launch"
alias axobj4="roslaunch arm_logic objective4.launch angle:=30.0"
alias axobj5="roslaunch arm_logic objective5.launch"
alias axobj6="roslaunch arm_logic objective6.launch"
alias axobj7="roslaunch arm_logic objective7.launch"
alias axobj8="roslaunch arm_logic objective8.launch"
alias axobj9='roslaunch arm_logic objective9.launch tag:="1"'
alias axobj10="roslaunch arm_logic objective10.launch"
