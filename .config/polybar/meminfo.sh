echo $(( `sed -n '/^MemAvailable/s/.*:\s*\(\S*\).*/\1/p' /proc/meminfo`>>10 )) MB
