import os
import subprocess as s
import re
import psutil

def python_shell(command, **kw):

    # run the command and grab stderr/stdout to check if git repo or not
    output = s.Popen(command, shell=True, stdout=s.PIPE, stderr=s.PIPE)
    stdout, stderr = output.communicate()
    return stderr, stdout

print psutil.cpu_percent(interval = 1)
