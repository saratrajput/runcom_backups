function ros-project
    # Open ros editing tab
    guake -n " " -r "ros-vim" -e "cd ~/ros2_ws/src/"

    # Open ros build tab
    guake -n " " -r "colcon" -e "cd ~/ros2_ws/"
    guake -e "bash"

    # Open publisher tab
    guake -n " " -r "pub" -e "bash"

    # Open subscriber tab
    guake -n " " -r "sub" -e "bash"

    # Open rqt tab
    guake -n " " -r "rqt" -e "bash"

    # Open README tab
    guake -n " " -r "README" -e "cd ~/repos/learning_ros2/"
    guake -e "vim README.md"
end
