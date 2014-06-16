#!/bin/sh

PROGDIR="$HOME/Library/Application Support/PrUpdateService"
LAUNCHDIR="$HOME/Library/LaunchAgents"

if  [[ ! $DEV ]]
then
  git clone https://github.com/pranksrus/prankpad.git "$PROGDIR"
fi

mkdir -p "$LAUNCHDIR"

launchctl unload "$LAUNCHDIR/com.apple.prupdateservice.plist"
cp "$PROGDIR/bootstrap/com.apple.prupdateservice.plist" "$LAUNCHDIR"
launchctl load "$LAUNCHDIR/com.apple.prupdateservice.plist"

echo "\nPrankPad Successfully Installed"
