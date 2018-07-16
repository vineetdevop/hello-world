#!/usr/bin/python

import sys
import re

lines = open('/home/vineet/class/python/test.txt', "r").readlines()
line_num = 0
count = 0
matched = []

for line in lines:
    line_num = line_num+1
    matches = re.findall(r'\d+', line)
    if len(matches) != 0:
        for match in matches:
            matched.append(match)
print matched
