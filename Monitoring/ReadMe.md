# Monitoring Hue System using PTRG
It's possible to monitor your Hue System using PTRG. Important things are availability of the Hue Bridge, Battery state of Motion Sensor or Dimmer Switch and Temperature of the integrated temperature sensor.

It looks like that for example:
![PTRG](https://thomas-krampe.com/img/prtgmonitoring.png)

## How To
- Just create a new Device with the IP address of your Hue Bridge
- Copy the PowerShell scripts to the Program Files (x86)\PRTG Network Monitor\Custom Sensors folder on your probe server
- Add a Programm/Script Sensor to your Bridge Device and choose one of the scripts for each sensor.

Keep in mind that all scripts published here are examples only. You may use, modify and distribute it at your own risk.

## Disclaimer

All scripts are (hopefully) well documented, if you find an error or have some improvements for me just drop me a message. All scripts are provided to you "as is" with no representations, warranties or conditions of any kind.
