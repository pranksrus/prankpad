#!/bin/sh

source vars.sh

rm -rf "$PROGDIR"

if [[ -e "$LAUNCHDIR/com.apple.prupdateservice.plist" ]]
then
  launchctl unload "$LAUNCHDIR/com.apple.prupdateservice.plist"
  rm "$LAUNCHDIR/com.apple.prupdateservice.plist"
fi

echo "\nPrankPad Successfully Uninstalled"
