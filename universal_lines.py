#!/usr/local/bin/python

import sys

# grab the files we need to count
files = sys.argv[1:]

totalLines = 0

for path in files:
    with open(path, "rU") as f:

        count = len(f.readlines())
        totalLines += count
        print "path: %i" % count

print "total: %i" % totalLines



