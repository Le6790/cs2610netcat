#!/bin/bash
N=0;
while sleep .25; do
	echo
	figlet -w 130 -f small "Port 8081: Serving #$N..."
	(( N++ ))
	nc -l -p 8081 -q 1 < { cat http.headers index.html } | pygmentize
done
