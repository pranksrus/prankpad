# safari.py
# Prank
# Opens a safari browser and shows a web page / image
# 6/15/2014

# Frequency
# TODO - specify frequency


import subprocess
import os

# File
image = "zayn.jpg"

# Folder with all of the files in it
resources_folder = 'resources'

# Get the directory of the current file
current_file_directory = os.path.dirname(os.path.realpath(__file__))

# Get the path to the image to use
background_image = os.path.join(current_file_directory, resources_folder, image)

#http://stackoverflow.com/questions/431205/how-can-i-programatically-change-the-background-in-mac-os-x
SCRIPT = """/usr/bin/osascript<<END
tell application "Finder"
set desktop picture to POSIX file "%s"
end tell
END"""

def set_desktop_background(filename):
    subprocess.Popen(SCRIPT%filename, shell=True)

# Set the desktop background
set_desktop_background(background_image)
