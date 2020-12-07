#!/bin/bash

AUDIOPATH=/home/mrmachine/xmas-iot/music
SERVICE=omxplayer

for track in $AUDIOPATH/*.mp3
do
	clear
	echo "Playing $(basename $track) ..."
	$SERVICE -o local $track >/dev/null 2<&1
	sleep 1;
done
