# trash-put
alias del="trash-put"

# list and grep case insensitive
alias lg='ll | grep -i'

# Remove spaces from file names in current directory
alias removeSpace='rename "s/ //g" *'

# find word in all files in that folder
alias findPattern='grep -irnw ./ -e'

# Docker remove trailing exited images
alias docker_rm_exited='docker rm $(docker ps -a -q -f status=exited)'

# Catkin cd and make
alias cm='cd ~/dishwasher_ws && catkin_make'

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

# sshfs to super-pc-1 
alias remote_super_pc_1='sshfs suraj@35.229.227.23:/ remote_super_pc_1; cd remote_super_pc_1'

# sshfs to super-pc-2
alias remote_super_pc_2='sshfs suraj@34.80.146.141:/ remote_super_pc_2; cd remote_super_pc_2'

# sshfs to super-pc-3
alias remote_super_pc_3='sshfs suraj@35.243.106.53:/ remote_super_pc_3; cd remote_super_pc_3'

# ssh super-computer-1
alias super_pc_1='ssh suraj@35.229.227.23'

# ssh super-computer-2
alias super_pc_2='ssh suraj@34.80.146.141'

# ssh super-computer-3
alias super_pc_3='ssh suraj@35.243.106.53'

# ssh super-computer-4
alias super_pc_4='ssh suraj@35.221.100.213'

# ssh super-computer-5
alias super_pc_5='ssh suraj@35.189.136.48'
alias remote_super_pc_5='sshfs suraj@35.189.136.48:/ remote; cd remote'

# ssh super-computer-6
alias super_pc_6='ssh suraj@35.221.79.94'

# sshfs to max's pc
alias remote_max_pc='sshfs suraj@10.3.3.7:/ remote_max_pc; cd remote_max_pc'

# cd to ubuntu-16 jail
alias ubuntu_16_chroot='cd /srv/chroot/xenial_amd64'

# launch Unreal Engine 
alias UnrealEngine='~/UnrealEngine/Engine/Binaries/Linux/UE4Editor'

# activate ros on ubuntu-16
alias activate_ros='source /opt/ros/lunar/setup.bash'

# cd to dope training in remote super pc
alias cd-dope-train-remote='cd /home/suraj/remote_super_pc_1/home/suraj/dope/src/training'

