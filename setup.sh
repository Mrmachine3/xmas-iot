#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install python3-rpi.gpio
sudo apt install python3-gpiozero python3-pigpio python-gpiozero-doc
python3 -m http.server -d /usr/share/doc/python-gpiozero-doc/html

sudo chown root:$USER /dev/gpiomem
sudo chmod g+rw /dev/gpiomem

