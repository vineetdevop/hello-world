#!/usr/bin/python

import sys
import re

lines = open('/home/vineet/class/python/test.txt', "r").readlines()
line_num = 0
count = 0

for line in lines:
    line_num = line_num+1
    if re.search(r"error", line):
        count = count+1
        #line_num = line_num+1
        print  line_num, "--", line
print "Error occured:", count, " times."
