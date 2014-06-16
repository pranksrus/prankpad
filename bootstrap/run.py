#!/usr/bin/python

import commands, os, json, tempfile

CWD = os.path.dirname(os.path.realpath(__file__))

PRANKS_PATH = os.path.join(CWD, "..", "pranks")
MANIFEST_PATH = os.path.join(CWD, "..", "manifest", "manifest.json")

RUN_PY = "run.py"

f = open(MANIFEST_PATH, 'r')
read_file = f.read()
f.close()

manifest = json.loads(read_file)

fd, temp_path = tempfile.mkstemp()
cron_file = open(temp_path, 'w')

for elem in manifest:
    to_exec = "python %s" % os.path.join(PRANKS_PATH, elem["name"], RUN_PY)
    print >> cron_file, ("%s %s" % (elem["time"], to_exec))

cron_file.close()

commands.getstatusoutput("crontab %s" % temp_path)
os.remove(temp_path)
