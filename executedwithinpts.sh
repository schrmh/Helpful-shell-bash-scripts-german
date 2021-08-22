#!/bin/sh
PTS_PROCESSES="$(ps a -o tty:1,pid,command | awk '!/bash/ && /pts/' | cut -d " " -f2-)"
WORKING_DIRS="$(echo "$PTS_PROCESSES" | cut -d " " -f1 | xargs -IPID -n1 sh -c "printf PID' '; readlink /proc/PID/cwd || printf '\n'")"
WORKING_DIRS="$(echo "$WORKING_DIRS" | awk  '{ if ( NF >= 2 ) print } ')"
echo "$WORKING_DIRS"
#echo "$PTS_PROCESSES"
