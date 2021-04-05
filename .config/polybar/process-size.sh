#!/bin/sh
proc=`ps --sort=+size a o 'size comm' | tail -1`
size=`echo $proc | sed 's/ .*//'`
#echo size: $size
#echo proc: $proc

if [ $(( $size>1000000 )) == 1 ]; then
	echo -n $(( $size>>10 ))"MB " 
	echo $proc | sed "s/\S* //"
else
	echo
fi
