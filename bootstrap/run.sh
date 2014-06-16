#!/bin/bash

PROGDIR="$HOME/Library/Application Support/PrUpdateService"
LAUNCHDIR="$HOME/Library/LaunchAgents"
cd "$PROGDIR"
git pull
python "$PROGDIR/bootstrap/run.py"
