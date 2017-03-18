#!/bin/bash
N=0; while ./usleep 250000; do echo; figlet -w 130 -f small "Port 8081: Serving #$N..."; (( N++ ));  nc -l -p 8081 -q 1 < form_demo.html | pygmentize; done
