#!/bin/zsh
pkill -15 -f takeabreak.py
sh -c "python3 ~/.config/polybar/scripts/takeabreak/takeabreak.py &"
