# safari.py
# Prank
# Opens a safari browser and shows a web page / image
# 6/15/2014

#Imports
from subprocess import call

# Frequency
# TODO - specify frequency

# Message
website = "http://www.theouthousers.com/images/jck//ThanosCopter/news/sexyzac.jpg"

# Open
call(["open" ,"-a", "Safari", website])