# trash-put
alias del="trash-put"

# list and grep case insensitive
alias lg='ll | grep -i'

# Remove spaces from file names in current directory
alias removeSpace='rename "s/ //g" *'

# find word in all files in that folder
alias find-pattern='grep -irnw ./ -e'

# Docker remove trailing exited images
alias docker-rm-exited='docker rm $(docker ps -a -q -f status=exited)'

# Docker exec existing dope container
alias docker-exec='docker exec -it nvidia-dope-v1 bash'

# Catkin cd and make
alias cm='catkin_make; source devel/setup.bash; rospack profile'

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

# shortcut to cd one step back and delete build files
alias mycclean='cd ..; rm -r build'

# shortcut for source after catkin_make
alias ros-source='source devel/setup.bash'

# view ueye-yolo image
alias view-ueye-yolo='rosrun image_view image_view image:=/ueye_yolo/image_raw compressed'

# cd aliases
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

# launch Unreal Engine 
alias UnrealEngine='~/UnrealEngine/Engine/Binaries/Linux/UE4Editor'

# activate ros on ubuntu-16
alias activate-ros='source /opt/ros/lunar/setup.bash'
