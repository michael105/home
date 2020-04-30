#!/bin/bash

state=3
if [ -e /tmp/.fanstate ]; then
		state=`cat /tmp/.fanstate`
fi
state=$(($state+1))
if [ $state -gt 4 ]; then 
		state=4
fi

echo $state > /tmp/.fanstate
echo $state > /tmp/fan



