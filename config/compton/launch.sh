#!/bin/bash
killall -q picom

while pgrep -u $UID -x picom >/dev/null; do sleep 1; done

picom -bc --config /home/jast/.config/compton/compton.conf --experimental-backends --backend glx
