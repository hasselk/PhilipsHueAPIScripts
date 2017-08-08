# Ip address or the Hue Bridge
$ip = ""

#API Key
$apiUsername = ""

$hueDSpower = Invoke-RestMethod -URI http://$ip/api/$apiUsername/sensors/6/ -ContentType "application/json" -Method Get -ErrorAction SilentlyContinue

$x=[string]$hueDSpower.config.battery+":OK"
write-host $x

exit 0