#!/bin/sh
xdotool search --desktop 0 --name $1 | xargs -n1 xdotool windowactivate
