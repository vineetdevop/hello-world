#!/usr/bin/python
import subprocess
import os
dirName = '/home/vineet/Bagheera/FieldDevices/US-devices/16300003/Oct25'

os.chdir(dirName)
reboot_enter = subprocess.Popen("grep -air \"reboot enter\"", stdout=subprocess.PIPE,shell = True).communicate()[0]

print reboot_enter
