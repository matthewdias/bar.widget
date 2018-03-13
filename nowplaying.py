import json
import os
import subprocess
import sys
import codecs

def is_runnning(app):
    count = int(subprocess.check_output(["osascript",
                "-e", "tell application \"System Events\"",
                "-e", "count (every process whose name is \"" + app + "\")",
                "-e", "end tell"]).strip())
    return count > 0

gpm = json.loads(open(
    '/Users/Matthew/Library/Application Support/Google Play Music Desktop Player/json_store/playback.json',
    'r').read())

UTF8Writer = codecs.getwriter('utf8')
sys.stdout = UTF8Writer(sys.stdout)

if gpm['song']['title']:
    print "%s - %s" % (unicode(gpm['song']['title']), unicode(gpm['song']['artist']))

# elif is_runnning("iTunes"):
# 	itunes = os.system("osascript -e 'tell application \"iTunes\" to name of current track & \" - \" & artist of current track'")

elif is_runnning("Spotify"):
    spotify = os.system("osascript -e 'tell application \"Spotify\" to name of current track & \" - \" & artist of current track'")
