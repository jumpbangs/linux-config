#!/bin/bash
# If conky is running, kill it.  Otherwise start it.

CONKY_PID=$(ps aux | grep "[/]usr/bin/conky -q -c /home/chong/.config/conky/conky.conf" | awk '{print $2}')

if [ -z "$CONKY_PID" ]; then
    /usr/bin/conky -q -c /home/chong/.config/conky/conky.conf &
else
    kill "$CONKY_PID"
fi
