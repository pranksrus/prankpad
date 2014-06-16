#!/bin/sh

if [[ $1 = "--dev" ]]
then
  DEV=true
  PROGDIR="$PWD"
else
  DEV=false
  PROGDIR="$HOME/Library/Application Support/PrUpdateService"
fi

LAUNCHDIR="$HOME/Library/LaunchAgents"
