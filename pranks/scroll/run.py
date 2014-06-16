# run.py
# Prank - Scroll
# Randomly switches the scroll direction
# This is put into play when the user logs back in to the computer
# 6/15/2014

#Imports
from subprocess import call
import random

# States
states = ["TRUE", "FALSE"]

# Random state
random_state = random.choice(states)

# Change Direction
# http://www.cnet.com/how-to/how-to-manually-change-the-scroll-direction-in-mavericks/
call(["defaults", "write", "-g", "com.apple.swipescrolldirection", "-bool", random_state])

# Read out to see what it is (for development)
# call(["defaults", "read", "-g", "com.apple.swipescrolldirection"])