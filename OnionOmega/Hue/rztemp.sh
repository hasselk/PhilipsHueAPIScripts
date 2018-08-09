#!/bin/bash
TEMPERATUR=$(curl -s -request GET http://192.168.178.107/api/MqI0aPU2rHcvKJlsh-LquDmuQjbwFwqAeFdG81ys/sensors/10/)
CELSIUS=${TEMPERATUR:24:4}
TEMP=${CELSIUS:0:2}'.'${CELSIUS:2:2}
TEMPS=${CELSIUS:0:2}

echo $TEMP
echo $TEMPS

oled-exp -i -c

if [ $TEMPS -gt 40 ]
then
	oled-exp -i draw /root/lcd/hot.lcd scroll left

elif [ $TEMPS -lt 10 ]
then
	oled-exp -i draw /root/lcd/cold.lcd scroll left

else
	oled-exp -i draw /root/lcd/$TEMPS.lcd scroll left
fi

ROOM="RZ_$TEMP"

curl --data '{"text":"'$ROOM'"}' https://hooks.slack.com/services/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


