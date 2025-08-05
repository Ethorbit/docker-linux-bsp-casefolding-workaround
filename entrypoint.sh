#!/bin/bash

# Script puts files in its current directory
# So I will simply run it inside the persistent volume

cd /data
cp -rap "$HOME/lbspcfw" ./
chmod +x ./lbspcfw/lbspcfw.sh
exec ./lbspcfw/lbspcfw.sh "$@"
