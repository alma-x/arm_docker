# BASH ALIASES
#$SCRIPTS='$HOME/.scripts'

# GENERAL

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias cd..='cd ..'
alias cd...='cd ../..'

# BASH
alias bashconfigure="source $HOME/.bashrc"

# EDITOR
#alias nano="nano -m"
# sta causando problemi col tasto destro?

# PACKAGES
alias apthistory='less /var/log/apt/history.log'


alias updateax=/root/arm_docker/update_axarm.sh && /root/arm_docker/config_axarm.sh

alias manual="cat /root/arm_docker/documentation/axarm_manual.txt"

alias cleanconfig="if [ -f /root/dummy.file ]; then rm /root/dummy.file; fi"

alias code="code --no-sandbox --user-data-dir /root/code_ws"
