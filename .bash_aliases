# trash-put
alias del="trash-put"

# list and grep case insensitive
alias lg='ll | grep -i'

# Remove spaces from file names in current directory
alias removeSpace='rename "s/ //g" *'

# find word in all files in that folder
alias findPattern='grep -irnw ./ -e'

# Docker remove trailing exited images
alias docker-rm-exited='docker rm $(docker ps -a -q -f status=exited)'

# Docker exec existing dope container
alias docker-exec='docker exec -it nvidia-dope-v1 bash'

# Catkin cd and make
alias cm='cd ~/dishwasher_ws && catkin_make'

# activate anaconda
alias activate-anaconda='export PATH=~/anaconda3/bin:$PATH'

# activate NVDU Visualizer environment
alias nvdu-env='export PATH=~/anaconda3/bin:$PATH && source activate nvdu_env'

# activate plot loss environment
alias dope-env='export PATH=~/anaconda3/bin:$PATH && source activate dope_env'

# activate asaoka_env
alias asaoka-env='source ~/asaoka_2.7_env/bin/activate'

# activate repl_test_env
alias repl-test='export PATH=~/anaconda3/bin:$PATH && source activate repl_test'

# activate mrcnn_env
alias mrcnn-env='export PATH=~/anaconda3/bin:$PATH && source activate mrcnn_env'

# find word in history
alias hgrep='history | grep -i'

# find path of given file
alias pgrep='find . -name'

# shortcut for building cpp files
alias mycmake='mkdir build; cd build; cmake ..; make'

# cd to zed-tools
alias zed-tools='cd /usr/local/zed/tools' 

# cd to ubuntu-16
alias cd_ubuntu-16='cd /media/sp/69e5320f-7b81-4f7f-b80b-dbf0b75f970c/home/suraj/'

# shortcut to cd one step back and delete build files
alias mycclean='cd ..; rm -r build'

# shortcut for source after catkin_make
alias ros-source='source devel/setup.bash'

# cd aliases
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

# ssh super-computer-1
alias super-pc-1='ssh suraj@35.229.227.23'
# sshfs to super-pc-1 
alias remote-super-pc-1='sshfs suraj@35.229.227.23:/ remote; cd remote'

# ssh super-computer-2
alias super-pc-2='ssh suraj@34.80.146.141'
# sshfs to super-pc-2
alias remote-super-pc-2='sshfs suraj@34.80.146.141:/ remote; cd remote'

# ssh super-computer-3
alias super-pc-3='ssh suraj@34.76.148.66'
# sshfs super-computer-3
alias remote-super-pc-3='sshfs suraj@34.76.148.66:/ remote; cd remote'

# ssh super-computer-4
alias super-pc-4='ssh suraj@34.76.252.27'
# sshfs super-computer-4
alias remote-super-pc-4='sshfs suraj@34.76.252.27:/ remote; cd remote'

# ssh super-computer-5
alias super-pc-5='ssh suraj@35.247.183.105'
# sshfs super-computer-5
alias remote-super-pc-5='sshfs suraj@35.247.183.105:/ remote; cd remote'

# sshfs to asaoka's pc
alias remote-asaoka-pc='sshfs asaoka@10.3.3.7:/ remote; cd remote'

# cd to ubuntu-16 jail
alias ubuntu-16-chroot='cd /srv/chroot/xenial_amd64'

# launch Unreal Engine 
alias UnrealEngine='~/UnrealEngine/Engine/Binaries/Linux/UE4Editor'

# activate ros on ubuntu-16
alias activate-ros='source /opt/ros/lunar/setup.bash'

# cd to dope training in remote super pc
alias cd-dope-train-remote='cd /home/suraj/remote_super_pc_1/home/suraj/dope/src/training'
