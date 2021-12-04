# XMAS-IOT
## Purpose:
IoT-based project repo for automation code to turn on/off christmas lights, music, recite forecast, etc.

### Hardware Requirements
- Christmas Tree
- Christmas Ornaments
- Christmas Lights
- [IoT Relay Power Switch]()
- Raspberry Pi 4
- Raspberry Pi Case with exposed GPIO pins
- Two (2) Female-to-male jumper wires

### Steps
- Install ```gpiozero``` python library
- Clone repository
- Add limited admin user account to ```gpio``` group by issuing the following command

```bash
sudo usermod -aG gpio <user name>
```

- Entering desired cron schedules to automate the powercycling of the Christmas lights. See example crontab below:
```bash 
# new method
0 17 * * 1-5 python3 /opt/xmas-iot/lights on >/dev/null 2<&1 # Turn on at 5pm on weekdays
0 10 * * 6-7 python3 /opt/xmas-iot/lights on >/dev/null 2<&1 # Turn on at 10am on weekends
0 22 * * * python3 /opt/xmas-iot/lights off >/dev/null 2<&1 # Turn off at 10pm daily
```
