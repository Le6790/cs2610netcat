#!/bin/bash
PORT=8080
N=0;
while sleep .25; do
	echo
	figlet -w 130 -f small "Serving #$N..."
	echo http://$C9_HOSTNAME
	(( N++ ))
	cat http.headers index.html | nc -l -p $PORT -q 1 | pygmentize -l http
done
