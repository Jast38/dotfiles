#!/usr/bin/env bash

# Terminate already running bar instances
killall -q tint2

# Wait until the processes have been shut down
while pgrep -u $UID -x tint2 >/dev/null; do sleep 1; done

tint2 -c ~/.config/tint2/tint2rc_m0&
tint2 -c ~/.config/tint2/tint2rc_m1&
tint2 -c ~/.config/tint2/tint2rc_m2&

