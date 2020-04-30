#!/bin/sh

amixer sset Master,0 $((`amixer sget Master,0 | tail -1 | sed -E 's/.*Playback (..).*/\1/'` - 1 ))

