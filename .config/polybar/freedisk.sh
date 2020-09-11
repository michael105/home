export PATH=/rd/bin
#echo -n `df -h --output=avail -- / | tail -1`
/bb/df -h / | /bb/tail -1 | /bb/sed -E 's/\S*\s*\S*\s*\S*\s*(\S*).*/\1/'
