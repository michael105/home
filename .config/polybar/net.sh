route | sed -n -e '/^[0.0.0.0|default]/{p;q}' | sed -re 's/.+[[:space:]](.*)/ifconfig \1/e' | \
		sed -nE -e 's/.*inet ([^[:space:]]*).*/\1  /p' \
		-e 's/.*RX.*\(([^[:space:]]*)[[:space:]](.).*/(\1\2/p' \
		-e 's/.*TX.*\(([^[:space:]]*)[[:space:]](.).*/\1\2)/p' \
		\
		| tr '\n' ' '
