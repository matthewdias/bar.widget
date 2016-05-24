import json
import os
import subprocess

def is_runnning(app):
    count = int(subprocess.check_output(["osascript",
                "-e", "tell application \"System Events\"",
                "-e", "count (every process whose name is \"" + app + "\")",
                "-e", "end tell"]).strip())
    return count > 0

gpm = json.loads(open(
    '/Users/Matthew/Library/Application Support/Google Play Music Desktop Player/json_store/playback.json',
    'r').read())

if gpm['song']['title']:
    print "%s - %s" % (gpm['song']['title'], gpm['song']['artist'])

elif is_runnning("iTunes"):
	itunes = os.system("osascript -e \'tell application \"iTunes\" to name of current track & \" - \" & artist of current track'")
	# itunes = os.system("osascript -e \'tell application \"iTunes\" to if player state is playing then name of current track & \" - \" & artist of current track'")
