# Ip address or the Hue Bridge
$ip = ""

#API Key
$apiUsername = ""

$hueMSpower = Invoke-RestMethod -URI http://$ip/api/$apiUsername/sensors/10/ -ContentType "application/json" -Method Get -ErrorAction SilentlyContinue


$x=[string]$hueMSpower.config.battery+":OK"
write-host $x

exit 0