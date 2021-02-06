/rd/bin/sed -n 's/^cpu MHz.*: \(\S*\)\..*/\1MHz/p;/^cache/q' /proc/cpuinfo
