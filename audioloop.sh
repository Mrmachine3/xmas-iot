#!/bin/bash

AUDIOPATH=/home/mrmachine/xmas-iot/music
SERVICE=omxplayer

while true; do
	if ps ax | grep -v grep | grep  > /dev/null
	then
	sleep 1;
else
	for track in $AUDIOPATH/*.mp3
	do
		clear
		$SERVICE -o local $track & >/dev/null 2<&1
	done
fi
done
