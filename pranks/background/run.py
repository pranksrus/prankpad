# run.py
# Prank - Desktop Background
# Opens a safari browser and shows a web page / image
# 6/15/2014


# Import
import os, subprocess, random


# Folder with all of the files in it
images_folder = 'images'


# Script to set the background image
# http://stackoverflow.com/questions/431205/how-can-i-programatically-change-the-background-in-mac-os-x
SCRIPT = """/usr/bin/osascript<<END
tell application "Finder"
set desktop picture to POSIX file "%s"
end tell
END"""


# Chose a random file from the images folder 
def choose_random_image(images_folder):
	
	# Get the directory of the current file
	current_file_directory = os.path.dirname(os.path.realpath(__file__))
	images_directory = os.path.join(current_file_directory, images_folder)

	# Choose a random image
	chosen_image_name = random.choice(os.listdir(images_directory))

	# Get the path to the image to use
	background_image = os.path.join(images_directory, chosen_image_name)

	return background_image


# Set a random desktop background
def set_random_desktop_background(images_folder):
	image_path = choose_random_image(images_folder)
	subprocess.Popen(SCRIPT%image_path, shell=True)

# Set the desktop background
set_random_desktop_background(images_folder)
