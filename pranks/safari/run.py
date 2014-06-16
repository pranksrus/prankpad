# run.py
# Prank - Safari
# Opens a safari browser and shows a web page / image
# 6/15/2014

#Imports
from subprocess import call
import random

# Frequency
# TODO - specify frequency

# Message
websites = ["http://www.theouthousers.com/images/jck//ThanosCopter/news/sexyzac.jpg",
			"https://www.youtube.com/watch?v=kfVsfOSbJY0",
			"https://www.youtube.com/watch?v=dQw4w9WgXcQ"]

# Choose Random
chosen_website = random.choice(websites)

# Open
call(["open" ,"-a", "Safari", chosen_website])