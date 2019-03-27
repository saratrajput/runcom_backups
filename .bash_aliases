# trash-put
alias del="trash-put"

# history command with timestamp
export HISTTIMEFORMAT="%d/%m/%y %T "

# list and grep case insensitive
alias lg='ll | grep -i'

# Remove spaces from file names in current directory
alias removeSpace='rename "s/ //g" *'

# find word in all files in that folder
alias findPattern='grep -irnw ./ -e'

# Ros setup
#source /opt/ros/kinetic/setup.bash
# Different for each workspace
#source /home/sp/catkin_ws/devel/setup.bash

# Docker remove trailing exited images
alias docker_rm_exited='docker rm $(docker ps -a -q -f status=exited)'

# Catkin cd and make
alias cm='cd ~/dishwasher_ws && catkin_make'

# cd hoshi project
#alias cdh='cd ~/catkin_ws/src/hoshi/src'

# activate anaconda
alias activate_anaconda='export PATH=~/anaconda3/bin:$PATH'

# find word in history
alias hgrep='history | grep -i'

# find path of given file
alias pgrep='find . -name'

# shortcut for building cpp files
alias mycmake='mkdir build; cd build; cmake ..; make'

# cd to zed-tools
alias zed-tools='cd /usr/local/zed/tools' 

# cd to ubuntu-16
alias cd_ubuntu_16='cd /media/sp/69e5320f-7b81-4f7f-b80b-dbf0b75f970c/home/suraj/'

# shortcut to cd one step back and delete build files
alias mycclean='cd ..; rm -r build'

# shortcut for source after catkin_make
alias ros_source='source devel/setup.bash'

# cd aliases
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

# cat and copy to clipboard
#alias copycat='cat $file | xclip -sel clip'

# remote connect to training data /var/trainingdata
alias remote_deeplearning='sshfs suraj@35.229.227.23:/ remote_deeplearning; cd remote_deeplearning'

# remote connect to max's pc
alias remote_maxpc='sshfs suraj@10.3.3.7:/ remote_max_pc'

# ssh super-computer
alias super_computer='ssh suraj@35.229.227.23'

# cd to ubuntu-16 jail
alias ubuntu_16_chroot='cd /srv/chroot/xenial_amd64'

# launch Unreal Engine 
alias UnrealEngine='~/UnrealEngine/Engine/Binaries/Linux/UE4Editor'

# ssh super-computer-2
alias super_computer_2='ssh suraj@34.80.146.141'
