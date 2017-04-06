#!/bin/bash
#Tankibaj
#https://github.com/tankibaj
if [[ -e speedtest.py ]]; then
	clear
	chmod a+rx speedtest.py
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
	./speedtest.py --share
	echo ""
	echo "Done..."
	echo ""
	exit
fi
