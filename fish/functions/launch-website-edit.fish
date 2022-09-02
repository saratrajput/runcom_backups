function launch-website-edit
    set WORKING_DIR ~/dev_root/saratrajput.github.io;
    # Open VSCode
    code $WORKING_DIR;
	# Open terminator.
	terminator -l split_layout_4 --working-directory $WORKING_DIR &
end
