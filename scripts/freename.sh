#!/bin/sh
if [ ! $1 ]; then
		echo "Usage: 
$0 [path]filename [filenamepart2]

Looks for the first number for a filename composed by arg1\"number\"arg2,
that doesn't exist.
Prints the name to stdout 

example: echo test > \`freename.sh test .txt\`

" >&2

		exit 1
fi

i=1
echo $1$i$2
while [ -e $1$i$2 ] ;do
		echo $1$i$2
		i=[ i+1 ]
done




