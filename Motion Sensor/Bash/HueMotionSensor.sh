#!/bin/bash

MOTION=$(curl -s –request GET http://<IP-Adresse-der-Bridge>/api/<API-User>/sensors/11/)

if [ "${MOTION:21:4}" = "true" ]; then
    curl -s –request POST https://maker.ifttt.com/trigger/<Action>/with/key/<API-Key>
    echo “Bewegung erkannt.”
else
    echo “Keine Bewegung erkannt.”
fi