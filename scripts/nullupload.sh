#/bin/sh

while [ "$1" != "" ]
do
	echo $1
	shift
	curl -F"file=@$1" https://0x0.st | tee -a ~/.null
done
