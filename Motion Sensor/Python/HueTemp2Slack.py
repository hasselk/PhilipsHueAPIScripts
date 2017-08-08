from __future__ import print_function
from __future__ import division
import requests
import json

try:
    from types import SimpleNamespace as Namespace
except ImportError:
    # Python 2.x fallback
    from argparse import Namespace

# Enter IP-Address, API key and sensor id for your HUE bridge. Verify sensor ID first.
url = 'http://<bridge-IP>/api/<API-Key>/sensors/10/'

# Enter Slack webhook URI
slack = 'https://hooks.slack.com/services/<API-Key>/<API-Key>'

ret = requests.get(url)
data = ret.text
x = json.loads(data, object_hook=lambda d: Namespace(**d))

temp = x.state.temperature
temp = temp / 100
payload = {'text':temp}

req = requests.post(slack, data=json.dumps(payload))

# print (req.status_code)
# print (temp)
