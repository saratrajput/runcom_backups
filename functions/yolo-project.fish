function yolo-project
    # Open yolo script editing tab
    guake -n " " -r "yolo-vim" -e "cd ~/repos/yolo/scripts"

    # Open yolo launch tab
    guake -n " " -r "yolo" -e "cd ~/repos/yolo/scripts"
    guake -e "conda activate test_env"
end
