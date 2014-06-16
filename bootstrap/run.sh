#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$DIR/../vars.sh"

cd "$PROGDIR"
git pull
python "$PROGDIR/bootstrap/run.py"
