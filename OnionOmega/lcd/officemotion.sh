#!/bin/bash

MOTION=$(curl -s -request GET http://192.168.178.107/api/MqI0aPU2rHcvKJlsh-LquDmuQjbwFwqAeFdG81ys/sensors/29/)

if [ "${MOTION:21:4}" = "true" ]; then
    curl -s -request POST https://maker.ifttt.com/trigger/motion-detected/with/key/ASP2ma6y9HFLWJ4N2I7eD
    curl --data '{"text":"Office Motion detected!"}' https://hooks.slack.com/services/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

fi

