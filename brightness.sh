#!/bin/bash

brightness=`brightnessctl | awk 'NR==2 {sub("%","", $4);print $4}' | tr -cd '[:digit:].+'`

notify-send "Brightness:" -h int:value:$brightness
