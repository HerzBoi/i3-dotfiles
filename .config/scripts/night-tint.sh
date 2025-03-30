#!/bin/bash

mode=$(echo -e "Night\nDay" | rofi -dmenu -no-fixed-num-lines -p "Select mode:")

if [ "$mode" == "Night" ]; then
    # Set night mode
    redshift -O 4500K
elif [ "$mode" == "Day" ]; then
    # Set day mode
    redshift -x
else
    echo "Invalid selection"
fi
