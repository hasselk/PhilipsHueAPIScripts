# Ip address or the Hue Bridge
$ip = ""

#API Key
$apiUsername = ""

$hueDSpower = Invoke-RestMethod -URI http://$ip/api/$apiUsername/sensors/10/ -ContentType "application/json" -Method Get -ErrorAction SilentlyContinue
[string]$Temperature = $hueDSpower.state.temperature
[string]$Temperature = [string]$Temperature.Remove(2,2)

$x=[string]$Temperature+":OK"
write-host $x

exit 0