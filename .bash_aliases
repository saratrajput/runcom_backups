# cat to bat
#alias cat="bat"
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

# feh
alias feh='feh -g 640x480'

# cd aliases
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

# activate ros on ubuntu-16
alias activate-ros-melodic='source /opt/ros/melodic/setup.bash'

# Activate ros-2 dashing
alias activate-ros-2='source /opt/ros/dashing/setup.bash'

# Source gym-gazebo2
alias source-gym-gazebo='cd /home/sp/ros2learn/environments/gym-gazebo2 ; source `pwd`/provision/mara_setup.sh'

# Create text file for each png file
alias create-txt-for-each-png='for i in *; do touch "${i%.png}.txt"; done'
