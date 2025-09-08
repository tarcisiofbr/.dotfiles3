#!/bin/bash

level=$(xrandr --verbose --current | grep Brightness | awk '{print $2}')

direction=$1
change=$2

if [ $direction == "+" ]; then
    brightness=$(bc -l <<< "$level + $change")
elif [ $direction == "-" ]; then
    brightness=$(bc -l <<< "$level - $change")
fi

xrandr --output HDMI-1 --brightness $brightness


