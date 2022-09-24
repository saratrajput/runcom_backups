function launch-learn-django
	set WORKING_DIR ~/dev_root/my_learnings/Python/Django;
	# Open Visual-Studio Code.
	code $WORKING_DIR;
	# Open terminator.
	terminator -l split_layout_4 --working-directory $WORKING_DIR &

	# Open google-chrome.
    google-chrome --new-window "https://youtu.be/F5mRW0jo-U4";
	# Open google-chrome.
    google-chrome --new-window "http://127.0.0.1:8000/admin/";
end
