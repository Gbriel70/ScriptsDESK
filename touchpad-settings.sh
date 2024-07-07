#!/bin/bash
ID=$(xinput list | grep -i touchpad | grep -o 'id=[0-9]*' | grep -o '[0-9]*')
xinput set-prop $ID "libinput Accel Speed" 0.3
xinput set-prop $ID "libinput Scroll Method Enabled" 1, 0, 0
xinput set-prop $ID "libinput Scroll Factor" 0.3

