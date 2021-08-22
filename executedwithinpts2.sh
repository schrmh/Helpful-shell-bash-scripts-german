#!/bin/bash
#PTS_PROCESSES="$(ps a -o tty:1,pid,command | awk '!/bash/ && /pts/' | cut -d " " -f2-)" #only processes without shell bash
PTS_PROCESSES="$(ps a -o tty:1,pid,command | grep 'pts/' | cut -d " " -f2-)" #open terminal terminal emulators
while IFS= read -r line; do
	PID="$(echo $line | cut -d " " -f1)"
	CMD="$(echo $line | cut -d " " -f2-)"
	WORKING_DIR="$(echo $PID | xargs -IPID lsof -Fn -p PID -a -d cwd | tail -n +2 | cut -c2-)"
	[ ! -z "$WORKING_DIR" ] && {
		MASTER=$(lsof -p "$PID" +E +c0 2>/dev/null | head -n2 | tail -n1 | cut -d " " -f1) #pseudoterminal master
		printf "+-------\ \n      PID: $PID\n   MASTER: $MASTER\n      CWD: $WORKING_DIR\nCMD/SHELL: $CMD\n+-------/\n"
	}
done <<< "$PTS_PROCESSES"
