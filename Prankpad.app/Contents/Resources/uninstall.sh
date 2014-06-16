#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$DIR/vars.sh"
source "$DIR/functions.sh"

uninstall

echo "\nPrankPad Successfully Uninstalled"
