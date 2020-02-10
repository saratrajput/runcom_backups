source ~/anaconda3/etc/fish/conf.d/conda.fish
source /opt/ros/lunar/share/rosbash/rosfish

alias cat="bat"
abbr miso_test "python darknet_local_copy.py zed -i --w=weights/miso_1000.weights --c=yolo_files/cfg/miso.cfg --m=yolo_files/data/miso.data"

alias feh="feh -g 640x480"
