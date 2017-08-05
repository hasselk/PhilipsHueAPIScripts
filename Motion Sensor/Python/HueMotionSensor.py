from __future__ import print_function
import requests
import json

try:
    from types import SimpleNamespace as Namespace
except ImportError:
    # Python 2.x fallback
    from argparse import Namespace

# Enter IP-Address, API key and sensor id for your HUE bridge
url = 'http://<bridge-IP>/api/<API-Key>/sensors/11/'
# Enter IFTTT webhook URI
ifttt = 'https://maker.ifttt.com/trigger/<action>/with/key/<API-Key>'

ret = requests.get(url)
data = ret.text
x = json.loads(data, object_hook=lambda d: Namespace(**d))

# Change your actions here
if x.state.presence == "true":
    req = requests.post(ifttt)
    print ("Presence is true")
    print (x.state.presence)
else:
    req = requests.post(ifttt)
    print ("Presence is false")
    print (x.state.presence)
