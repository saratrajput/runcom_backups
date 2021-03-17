function robotics-object-detection-unity
    # Open ros tab
    guake -n " " -r "ros-noetic" -e "docker run -it --rm -p 10000:10000 -p 5005:5005 unity-robotics:pose-estimation /bin/bash"

    # Open Unity Hub tab
    guake -n " " -r "Unity" -e "~/./UnityHub.AppImage"
    guake -e "conda activate test_env"
end
