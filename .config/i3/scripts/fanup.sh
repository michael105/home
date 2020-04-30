#!/bin/sh

state=0
if [ -e /tmp/.fanstate ]; then
		state=`cat /tmp/.fanstate`
fi
state=$(($state-1))
if [ $state -lt 0 ]; then 
		state=0
fi

echo $state > /tmp/.fanstate
echo $state > /tmp/fan



