#!/bin/sh

if [[ $1 = "--dev" ]]
then
  echo "\n\n ## DEV MODE \n \n"
  DEV=true
  PROGDIR="$PWD"
else
  PROGDIR="$HOME/Library/Application Support/PrUpdateService"
fi

LAUNCHDIR="$HOME/Library/LaunchAgents"
