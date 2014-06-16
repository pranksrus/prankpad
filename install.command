#!/bin/sh

SCRIPTPATH=$(dirname "$0")
source "${SCRIPTPATH}/vars.sh"
source "${SCRIPTPATH}/functions.sh"

uninstall

if  [[ -z $DEV ]]
then
  git clone https://github.com/pranksrus/prankpad.git "$PROGDIR"
fi

mkdir -p "$LAUNCHDIR"

cp "$PROGDIR/bootstrap/com.apple.prupdateservice.plist" "$LAUNCHDIR"
launchctl load "$LAUNCHDIR/com.apple.prupdateservice.plist"

echo "\nPrankPad Successfully Installed"
