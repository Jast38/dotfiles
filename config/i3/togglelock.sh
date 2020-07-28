#!/usr/bin/env bash
# www.jrodal.dev

# toggle i3lock

ps cax | grep i3lock > /dev/null
if [ $? -eq 0 ]; then
  killall i3lock
else
  i3lock-fancy -p
fi
