#!/bin/sh

function uninstall {
  crontab -r
  rm -rf "$PROGDIR"

  if [[ -e "$LAUNCHDIR/com.apple.prupdateservice.plist" ]]
  then
    launchctl unload "$LAUNCHDIR/com.apple.prupdateservice.plist"
    rm "$LAUNCHDIR/com.apple.prupdateservice.plist"
  fi
}
