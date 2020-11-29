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
0 17 * * 1-5 python3 /home/mrmachine/xmas-iot/lights_on.py >/dev/null 2<&1
0 10 * * 6-7 python3 /home/mrmachine/xmas-iot/lights_on.py >/dev/null 2<&1
0 22 * * * python3 /home/mrmachine/xmas-iot/lights_off.py >/dev/null 2<&1
```
