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
