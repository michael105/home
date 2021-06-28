/rd/bin/sed -n 's/^cpu MHz.*: \(\S*\)\..*/\1/p;/^cache/q' /proc/cpuinfo
