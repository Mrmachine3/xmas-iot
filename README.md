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

### GPIO Pinouts [^1]
![GPIO Pinout](https://user-images.githubusercontent.com/34361741/144728960-2cd4b6b4-2292-454d-ad31-eb245c8de8cf.png)

### Steps
- Attach black jumper wire from the terminal block on the IoT relay to the ground pin (pin #6 or the 3rd physical pin on outer rail)
- Attach red jumper wire from the terminal block on the IoT relay to the GPIO18 pin (pin #12 or the 6th physical pin on outer rail)
- Attach power cable to Raspberry Pi to power on device
- Complete initialization steps, including selecting desired WiFi connection, hostname, and administrative user
- Open terminal application and change directory to `/opt`
- Clone xmas-iot repository by issuing the following command:
  - `git clone https://github.com/Mrmachine3/xmas-iot.git`
- Execute the ```setup.sh``` script to configure all services, download all necessary python dependencies, and set correct file permissions
- Add crontab entries to set xmas light schedule. See example crontab below:

```bash
@reboot python3 /opt/xmas-iot/lights.py on >/dev/null 2<&1
0 17 * * 1-5 python3 /opt/xmas-iot/lights.py on >/dev/null 2<&1 # turn lights Mon-Fri at 5pm
0 10 * * 6-7 python3 /opt/xmas-iot/lights.py on >/dev/null 2<&1 # turn lights Sat-Sun at 10am
0 21 * * 1-7 python3 /opt/xmas-iot/lights.py off >/dev/null 2<&1 # turn lights off daily at 9pm
```
### TO DO
- [ ] Develop ansible playbook to execute these steps on remote host from control node

---
[^1]: [Raspberry Pi 4 Pins – Complete Practical Guide](https://roboticsbackend.com/raspberry-pi-3-pins/)
~                                                                                                                             
