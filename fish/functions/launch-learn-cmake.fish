function launch-learn-cmake
	set WORKING_DIR ~/dev_root/my_learnings/cmake_tutorials;
	# Open google-chrome.
    google-chrome --new-window "https://www.udemy.com/course/master_cmake/learn/lecture/17991435?start=0#overview";
	# Open Visual-Studio Code.
	code $WORKING_DIR;
	# Open terminator.
	terminator -l split_layout_4 --working-directory $WORKING_DIR &
end
