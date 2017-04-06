#!/bin/bash
#Tankibaj
#https://github.com/tankibaj
if [[ -e speedtest.py ]]; then
	chmod a+rx speedtest.py
	clear
	echo "Starting speedtest please wait....."
	echo ""
	echo ""
	./speedtest.py --share
	echo ""
	echo "Done..."
	echo ""
	exit

else
	clear
	wget https://raw.githubusercontent.com/tankibaj/speedtest/master/speedtest.py
	chmod a+rx speedtest.py
	clear
	echo "Starting speedtest please wait....."
	echo ""
	echo ""
	./speedtest.py --share
	echo ""
	echo "Done..."
	echo ""
	exit
fi
