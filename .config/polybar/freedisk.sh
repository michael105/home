#export PATH=/rd/bin
#echo -n `df -h --output=avail -- / | tail -1`
df -h / | tail -1 | sed -E 's/\S*\s*\S*\s*\S*\s*(\S*).*/\1/'
