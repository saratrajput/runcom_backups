# cat to bat
alias cat="bat"
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

# view ueye-images
alias view-ueye-images='rosrun image_view image_view image:=/ueye/image compressed'

# save ueye-images
alias save-ueye-images='rosrun image_view image_saver image:=/ueye/image _filename_format:=hcj_data_collection_%04d.png'

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

# launch Unreal Engine 
alias UnrealEngine='~/UnrealEngine/Engine/Binaries/Linux/UE4Editor'

# activate ros on ubuntu-16
alias activate-ros='source /opt/ros/lunar/setup.bash'

#ssh to yolo-1
alias yolo-1='ssh suraj@104.197.133.135'
alias remote-yolo-1='sshfs suraj@104.197.133.135:/ yolo-1; cd yolo-1'
#ssh to yolo-1
alias yolo-1='ssh suraj@35.232.2.206'
alias remote-yolo-1='sshfs suraj@35.232.2.206:/ yolo-1; cd yolo-1'
#ssh to windows
alias windows='ssh suraj@10.3.3.7'
alias remote-windows='sshfs suraj@10.3.3.7:/ windows; cd windows'
#ssh to yolo-2
alias yolo-2='ssh suraj@34.82.121.199'
alias remote-yolo-2='sshfs suraj@34.82.121.199:/ yolo-2; cd yolo-2'
#ssh to yolo-1
alias yolo-1='ssh suraj@34.66.203.41'
alias remote-yolo-1='sshfs suraj@34.66.203.41:/ yolo-1; cd yolo-1'
#ssh to yolo-1
alias yolo-1='ssh suraj@104.197.215.16'
alias remote-yolo-1='sshfs suraj@104.197.215.16:/ yolo-1; cd yolo-1'

#ssh to yolo-1
alias yolo-1='ssh suraj@35.225.38.198'
alias remote-yolo-1='sshfs suraj@35.225.38.198:/ yolo-1; cd yolo-1'
#ssh to yolo-1
alias yolo-1='ssh suraj@146.148.'
alias remote-yolo-1='sshfs suraj@146.148.:/ yolo-1; cd yolo-1'
#ssh to yolo-1
alias yolo-1='ssh suraj@146.148.61.3'
alias remote-yolo-1='sshfs suraj@146.148.61.3:/ yolo-1; cd yolo-1'
