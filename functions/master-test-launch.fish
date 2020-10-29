function master-test-launch
    # Open master view tab for viewing yolo output
    guake -n " " -r "master-view" -e "master"
    guake -e "cd workspace_stash/src/yolo/"

    # Open master test tab for running tests
    guake -n " " -r "master-test" -e "master"
    guake -e "cd ~/scripts"

    # Open master zed tab for running and killing yolo
    guake -n " " -r "master-zed" -e "master"

    # Open remote-master tab for editing code
    guake -n " " -r "r-master" -e "cd ~/remote/"
    guake -e "remote-master"
    guake -e "cd workspace_stash/src/yolo/scripts/"

    # Open weights tab for copying weights
    guake -n " " -r "r-weights" -e "cd ~/remote/master/home/user/workspace_stash/src/yolo/scripts/"
end
