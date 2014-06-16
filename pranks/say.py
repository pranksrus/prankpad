# Say.py
# Prank
# Uses the apple text to speech system to say something out loud
# 6/15/2014

#Imports
from subprocess import call

# Frequency
# TODO - specify frequency

# Message
message = "Hello Tony, you are a stud with nice codes"

# Speak
call(["say", message])