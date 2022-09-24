function launch-cpp-wrapper
	set WORKING_DIR ~/dev_root/cpp_camera_wrapper/cpp;

	# Open google-chrome.
    google-chrome --new-window "https://bitbucket.org/octochef0/cpp_camera_wrapper/src/master/";


	# Open Visual-Studio Code.
	code $WORKING_DIR;

	# Open terminator.
	terminator -l split_layout_4 --working-directory $WORKING_DIR &
end
