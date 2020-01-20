#!/bin/sh

killall polybar
polybar bottombar -c ~/.config/polybar/i3-config &
polybar topbar -c ~/.config/polybar/i3-config &

