#!/bin/bash
#Tankibaj
#https://github.com/tankibaj

# clear the screen
clear


while getopts iv name
do
        case $name in
          i)iopt=1;;
          v)vopt=1;;
          *)echo "Invalid arg";;
        esac
done


#install -i
if [[ ! -z $iopt ]]
then
{
wd=$(pwd)
basename "$(test -L "$0" && readlink "$0" || echo "$0")" > /tmp/scriptname
scriptname=$(echo -e -n $wd/ && cat /tmp/scriptname)
echo ""
su -c "cp $scriptname /usr/bin/speedtest" root && echo "Speedtest Installed. Run 'speedtest' command" || echo "Installation failed"
echo ""
echo ""
}
fi

# version info -v
if [[ ! -z $vopt ]]
then
{
echo ""
echo -e "version 1"
echo -e "https://github.com/tankibaj"
echo ""
echo ""
}
fi


#run speedtest
if [[ $# -eq 0 ]]
then
{


# Speed Test script
if [[ -e /usr/bin/speedtest.py ]]; then
	clear
	chmod a+x /usr/bin/speedtest.py
	/usr/bin/./speedtest.py --share
	echo ""
	echo "Done..."
	echo ""

	exit

else
	clear
	wget https://raw.githubusercontent.com/tankibaj/speedtest/master/speedtest.py
	mv speedtest.py /usr/bin/speedtest.py
	chmod a+x /usr/bin/speedtest.py
	clear
	echo ""
	/usr/bin/./speedtest.py --share
	echo "Done...."
	echo ""
	exit
fi


echo ""
echo ""

}
fi
shift $(($OPTIND -1))
