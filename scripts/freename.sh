#!/bin/sh
if [ ! $1 ]; then
		echo "Usage: 
$0 [path]filename [filenamepart2] [max]

Looks for the first number for a filename composed by arg1\"number\"arg2,
that doesn't exist. max can be at maximum 999 (default)
Prints the name to stdout 

example: echo test > \`freename.sh test .txt\`

" >&2

		exit 1
fi

i=1
max=$3
if [ ! $3 ];then 
		max=999
fi

while [ -e "$1$i$2" ] ;do
		i=$[ i+1 ]
		if [[ $i > $max ]]
		then
				echo $0 error: max $max reached >&2
				exit 2
		fi
done

echo $1$i$2


