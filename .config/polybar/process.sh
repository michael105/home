#!/bin/sh
proc=`ps --sort=+pcpu a o 'pcpu comm' | tail -1`
pcpu=`echo $proc | sed 's/\..*//;s/ .*//;s/^0*//;s/^$/0/'`
#echo pcpu: $pcpu
#echo proc: $proc

if [ $(( $pcpu>15 )) == 1 ]; then
	echo $proc | sed "s/\.\S* /% /"
else
	echo 
fi
