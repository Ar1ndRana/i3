#!/bin/bash

brightness=`brightnessctl | awk 'NR==2 {sub("%","", $4);print $4}' | tr -cd '[:digit:].+'`

dunstify -t 1000 "Brightness:" -h int:value:$brightness
