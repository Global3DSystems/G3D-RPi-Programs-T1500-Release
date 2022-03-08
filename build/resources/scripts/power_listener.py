#!/usr/bin/python3

"""
This program is used as a listener for power button
that controls how the printer will shutdown.


Power ON
	1. Supply GPIO7 (RPI Pin26) with 3.3V
	2. Upon booting, GPIO14 (RPI Pin8) must have 3.3v

Power Off
	1. Supply GPIO7 (RPI Pin26) with 3.3V for 5secs

DO NOT EDIT OR MODIFY THIS FILE
G3D Software Development Team
"""

import RPi.GPIO as GPIO
import os
import time
import subprocess

HOLD_DELAY_SECS = 3
power_pin = 7 # 26 physical.
reset_pin = 8 # 24 physical.  

reset_command = "/home/pi/G3D-RPi-Programs-T1500-Release-master/build/resources/scripts/reset.py"

GPIO.setmode(GPIO.BCM)
GPIO.setup(power_pin, GPIO.IN, pull_up_down = GPIO.PUD_DOWN)
GPIO.setup(reset_pin, GPIO.IN, pull_up_down = GPIO.PUD_UP)

def shutoff(channel):
    now  = 0
    start = time.time()

    print("Shut off event enter.")
    
    while now < HOLD_DELAY_SECS and GPIO.input(power_pin):
	
        now = (time.time() - start)

        if now >= HOLD_DELAY_SECS and GPIO.input(power_pin):
            
            print("Shutting down...")
            os.system("sudo poweroff")
            break

def reset_printer(channel):
    now  = 0
    start = time.time()

    print("Reset event enter.")	
    while now < HOLD_DELAY_SECS and not GPIO.input(reset_pin):
	
        now = (time.time() - start)

        if now >= HOLD_DELAY_SECS and not GPIO.input(reset_pin):
            
            print("Reset triggered down...")
            subprocess.run(["sudo", "python3", reset_command])
            print("Shutting down.")
            os.system("sudo poweroff")
            break
		
GPIO.add_event_detect(power_pin, GPIO.RISING, callback = shutoff, bouncetime = 200)
GPIO.add_event_detect(reset_pin, GPIO.FALLING, callback = reset_printer, bouncetime = 200)

while True:
    # Start a loop with delay and just 
    # listen to button events
    print("Listening for button press...")
    #print("Shutdown pin state: ", GPIO.input(power_pin))
    #print("Reset pin state: ", GPIO.input(reset_pin))
    time.sleep(1)
