#!/bin/bash
TEMPERATUR=$(curl -s -request GET http://<Bridge-IP>/api/<API-Key>/sensors/10/)
CELSIUS=${TEMPERATUR:24:4}
TEMP=${CELSIUS:0:2}'.'${CELSIUS:2:2}

curl --data '{"text":"'$TEMP'"}' https://hooks.slack.com/services/<API>/<Key>