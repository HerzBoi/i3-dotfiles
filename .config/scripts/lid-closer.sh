#!/bin/bash

export crtProcEntry=/proc/acpi/video/VID/CRT0/state

isVgaConnected() {
    local crtState
    read -a < $crtProcEntry crtState
    test $(( ( ${crtState[1]} >>4 ) ${1:+*-1+1} )) -ne 0
}

delay=.1
unset switch
isVgaConnected || switch=not
while :;do
    while isVgaConnected $switch;do
        sleep $delay
      done
    if [ "$switch" ];then
        unset switch
        echo VGA IS connected
        # doing something while VGA is connected
      else
        switch=not
        echo VGA is NOT connected.
        # doing something else, maybe.
      fi
  done
