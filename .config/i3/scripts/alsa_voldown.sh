#!/bin/sh

if [ -z $1 ]; then
		vol=1
else
		vol=$1
fi
amixer sset Master,0 $((`amixer sget Master,0 | tail -1 | sed -E 's/.*Playback (..).*/\1/'` - $vol ))

