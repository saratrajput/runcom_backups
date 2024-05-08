#!/bin/bash
# https://askubuntu.com/questions/1122513/how-to-add-natural-inverted-mouse-scrolling-in-i3-window-manager

# Path to the configuration file
FILE="/usr/share/X11/xorg.conf.d/40-libinput.conf"

# Backup the original file just in case
cp "$FILE" "${FILE}.bak"

# Define a function to add NaturalScrolling if it's not already there
add_natural_scrolling() {
    # Using awk to process the file
    awk '
    /Section "InputClass"/ { in_section=1 } # Enter section
    /Identifier "libinput touchpad catchall"/ && in_section { in_touchpad_section=1 } # Identify touchpad section
    /EndSection/ && in_touchpad_section { # Check if end of the touchpad section is reached
        if (!found) {
            print "        Option \"NaturalScrolling\" \"True\""
        }
        in_section=0
        in_touchpad_section=0
        found=0
    }
    /Option "NaturalScrolling"/ && in_touchpad_section { found=1 } # Option found, set flag
    { print }
    ' "$FILE" > temp_file

    # Move the temporary file to original file
    mv temp_file "$FILE"
}

# Call the function
add_natural_scrolling


