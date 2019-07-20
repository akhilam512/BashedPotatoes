#!/bin/bash
dir='Your Music Directory'

acpi_listen | while IFS= read -r line;
do
    if [ "$line" = "jack/headphone HEADPHONE plug" ]
    then
       notify-send "headphones connected"
       cvlc $dir
    elif [ "$line" = "jack/headphone HEADPHONE unplug" ]
    then
       notify-send "headphones disconnected"
       kill $(ps -e | grep vlc | awk '{print $1}')
    fi
done
