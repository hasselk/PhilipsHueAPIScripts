#!/bin/bash
TEMPERATUR=$(curl -s -request GET http://192.168.178.107/api/MqI0aPU2rHcvKJlsh-LquDmuQjbwFwqAeFdG81ys/sensors/28/)
CELSIUS=${TEMPERATUR:24:4}
TEMP=${CELSIUS:0:2}'.'${CELSIUS:2:2}
echo $TEMP
ROOM="Buero_$TEMP"
echo $ROOM
curl --data '{"text":"'$ROOM'"}' https://hooks.slack.com/services/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


