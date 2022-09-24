function launch-sozai-inspection
	set WORKING_DIR ~/dev_root/cr_ai_processors/;

	# Open terminator.
	terminator -l split_layout_4 --working-directory $WORKING_DIR &

	# Open Visual-Studio Code.
	code $WORKING_DIR;

	# Open google-chrome.
    google-chrome --new-window "https://bitbucket.org/octochef0/cr_ai_processors/src/master/";
    google-chrome "https://github.com/xuebinqin/U-2-Net";
    google-chrome "https://web.kamihq.com/web/viewer.html?state=%7B%22ids%22%3A%5B%221dVrdnXoHTLRYYqAZAE4Gl8lH9LvRVVZw%22%5D%2C%22action%22%3A%22open%22%2C%22userId%22%3A%22110840537291743788987%22%7D&filename=undefined&kami_user_id=5453773";

    # Open data folder
    nautilus /data/sozai/ &

end
