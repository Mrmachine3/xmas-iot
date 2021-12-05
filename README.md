# XMAS-IOT
## Purpose:
IoT-based project repo for automation code to turn on/off christmas lights, music, recite forecast, etc.

### Hardware Requirements
- Christmas Tree
- Christmas Ornaments
- Christmas Lights
- [IoT Relay Power Switch](https://cdn.sparkfun.com/assets/a/5/d/a/f/iot2spec.pdf)
- Raspberry Pi 4
- Raspberry Pi Case with exposed GPIO pins
- Two (2) Female-to-male jumper wires (red & black)

### GPIO Pinouts
![GPIO Pinout](https://user-images.githubusercontent.com/34361741/144728960-2cd4b6b4-2292-454d-ad31-eb245c8de8cf.png)

### Steps
- Attach black jumper wire from the terminal block on the IoT relay to the ground pin (pin #6 or the 3rd physical pin on outer rail)
- Attach red jumper wire from the terminal block on the IoT relay to the GPIO18 pin (pin #12 or the 6th physical pin on outer rail)
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
