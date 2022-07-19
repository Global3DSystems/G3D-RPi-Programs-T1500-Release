import sys
import RPi.GPIO as GPIO
import time

# Usage: python3 buzz.py num_beeps interval_sec 0
# Test Phase 2
num_beeps = int(sys.argv[1])
interval_sec = float(sys.argv[2])
is_pwm = int(sys.argv[3])
buzz_bcm_pin = 21

GPIO.setmode(GPIO.BCM)
GPIO.setup(buzz_bcm_pin, GPIO.OUT)

breath = GPIO.PWM(buzz_bcm_pin, 1000)
breath.start(0)

# Normal active buzzer. High and low only.
if is_pwm == 0:
    for i in range(num_beeps):
        GPIO.output(buzz_bcm_pin, GPIO.HIGH)
        time.sleep(interval_sec)
        GPIO.output(buzz_bcm_pin, GPIO.LOW)
        time.sleep(interval_sec)
# Passive buzzer, pwm adjustment.
else:
    for i in range(num_beeps):
        breath.ChangeDutyCycle(0.1)
        time.sleep(interval_sec)
        breath.ChangeDutyCycle(0)
        time.sleep(interval_sec)

GPIO.cleanup()

