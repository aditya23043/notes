#!/bin/bash

if [[ "$1" == "clean" ]]; then
	rm *.py
elif [[ "$1" == "get" ]]; then
	for i in $(ampy --port /dev/ttyACM0 ls); do ampy --port /dev/ttyACM0 get $i > "$(echo $i | cut -d '/' -f2)"; done; sed -i 's///g' *
elif [[ "$1" == "run" ]]; then
	ampy --port /dev/ttyACM0 run main.py
fi
