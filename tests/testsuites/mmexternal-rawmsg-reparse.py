# call this via "python[3] script name"
# Released under ASL 2.0

import json
import sys

def on_receive(msg):
    data = json.loads(msg)
    rawmsg = data.get("rawmsg", "")
    if "fixme" in rawmsg:
        updated = "<34>Oct 11 22:14:15 fixed-host tag: fixed message"
        return {"rawmsg": updated}
    if "emptyme" in rawmsg:
        return {"rawmsg": ""}
    return {}


def on_init():
    pass


def on_exit():
    pass


on_init()
keep_running = True
while keep_running:
    line = sys.stdin.readline()
    if line:
        line = line[:-1]
        response = on_receive(line)
        print(json.dumps(response))
        sys.stdout.flush()
    else:
        keep_running = False
on_exit()
sys.stdout.flush()
