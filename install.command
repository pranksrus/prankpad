#!/bin/sh

source vars.sh
source functions.sh

uninstall

if  [[ -z $DEV ]]
then
  git clone https://github.com/pranksrus/prankpad.git "$PROGDIR"
fi

mkdir -p "$LAUNCHDIR"

cp "$PROGDIR/bootstrap/com.apple.prupdateservice.plist" "$LAUNCHDIR"
launchctl load "$LAUNCHDIR/com.apple.prupdateservice.plist"

echo "\nPrankPad Successfully Installed"
