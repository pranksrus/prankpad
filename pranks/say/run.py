# run.py
# Prank - Say
# Uses the apple text to speech system to say something out loud
# 6/15/2014

#Imports
from subprocess import call
import random

# Frequency
# TODO - specify frequency

# Messages
messages = ["What the fuck",
			"so skinny"]

# Random message
random_message = random.choice(messages)

# Speak
call(["say", random_message])