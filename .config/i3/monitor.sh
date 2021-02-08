#!/bin/sh

DP=$(xrandr | grep DP-* | cut -d ' ' -f 1)
DVI=$(xrandr | grep DVI | cut -d ' ' -f 1)

sleep 1s; xrandr --output DisplayPort-0 --off --output $DVI --mode 1600x900 --pos 0x0 --rotate normal --output $DP --mode 1024x768 --pos 1600x132 --rotate normal
