#!/usr/bin/python3

import gpiozero as gpio
from gpiozero import LED
from time import sleep
import math

relay = LED(18,initial_value=True)
duration = int(43200)

try:
    print("Christmas lights: ON")
    relay.on()
    sleep(duration)
except:
    KeyboardInterrupt

