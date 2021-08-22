#!/bin/sh
DISCORD_WID=$(printf 0x%x $(xdotool search --desktop 0 --class "Discord")) 
[ $DISCORD_WID = "0x0" ] && echo "Launch Discord first!" && exit
st -w $DISCORD_WID -g 50x2+312+48 & export APP_PID=$! && sleep 3 && ST_WID=$(printf 0x%x $(xdotool search --pid $APP_PID))
while true 
do
	sleep 0.2
	xdotool windowsize $ST_WID $(($(xwininfo -id $DISCORD_WID | awk -F ':' '/Width/ {printf $2}')-746)) 64
	[ $? -eq 0 ] || exit
done
