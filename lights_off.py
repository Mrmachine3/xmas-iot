#!/usr/bin/python3

import gpiozero as gpio
from gpiozero import LED
from time import sleep
import math

relay = LED(18,initial_value=True)

print("Christmas lights: OFF")
relay.off()
