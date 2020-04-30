#!/bin/sh

vol=`amixer sget Master,0 | tail -1 | sed -E 's/.*Playback (..).*/\1/'`
if [ $vol == "0" ]; then
		if [ -e "/tmp/alsavol-micha" ]; then
				amixer sset Master,0 `cat /tmp/alsavol-micha`
		else
				amixer sset Master,0 55
		fi
else
		echo $vol > "/tmp/alsavol-micha"
		amixer sset Master,0 0
fi


