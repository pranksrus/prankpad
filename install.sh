#!/bin/sh

rm -rf $HOME/Library/Applicaton\ Support/PrUpdateService
git clone https://github.com/pranksrus/prankpad.git $HOME/Library/Applicaton\ Support/PrUpdateService
$HOME/Library/Applicaton\ Support/PrUpdateService/bootstrap/install.sh
