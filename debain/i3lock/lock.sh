#!/bin/bash

ICON="$HOME/.config/i3lock/icon.png"
TMPBG="/tmp/screen.png"

(( $# )) && { icon=$1; }

scrot /tmp/screen.png
convert "$TMPBG" -scale 10% -scale 1000% "$TMPBG"
convert "$TMPBG" "$ICON" -gravity center -composite -matte "$TMPBG"
i3lock -u -i "$TMPBG"
