#!/usr/bin/python
import os
import sys
import glob
import json
import re
import shutil
import argparse
import time
from prettytable import PrettyTable
from datetime import date, datetime, timedelta
import zipfile
from ConfigParser import ConfigParser
import subprocess
import re

    #To check directory exist or not
def is_dir_exist(dirpath):
    is_exist = False
    if(os.path.isdir(dirpath)):    
        is_exist = True
    return is_exist


    #To check file exist or not
def is_file_exist(filepath):
    is_exist = False
    if(os.path.isfile(filepath)):
        is_exist = True
    return is_exist

    #To check link exist or not
def is_link_exist(linkpath):
    is_exist = False
    if(os.path.islink(linkpath)):
        is_exist = True
    return is_exist

    #To check environment variable set or not 
def is_env_variable_set(envVariable):
    is_set = False
    if envVariable in os.environ:
        is_set = True
    return is_set

    #Function to generate the  checksum of file
def generate_checksum(fileName):
    COMMAND ='md5sum'
    cmd = [COMMAND, '-b', fileName]
    try:
        proc = subprocess.Popen(cmd, stdout=subprocess.PIPE)
    except OSError as e:
        _print(file=sys.stderr)
        _print("fatal: '%s' is not available" % COMMAND, file=sys.stderr)
        _print('fatal: %s' % e, file=sys.stderr)
        _print(file=sys.stderr)
        _print('Please make sure %s is installed and in your path.' % COMMAND, file=sys.stderr)
        raise ChecksumGeneration()

    checksum_str = proc.stdout.read().split()[0]
    proc.stdout.close()
    proc.wait()
    return checksum_str


"""
Function to update configuration in a file
"""
def set_config_to_path(configPath, section, option, value):

    read = False

    #check if config file exists
    if ( os.path.isfile(configPath)):
        configPath = os.path.realpath(configPath);
        config = ConfigParser();
        #try to read the value from ini file
        try:
            config.read(configPath)
            if config.has_section(section) :
                    #Update the new values
                config.set(section, option, value)
                read = True
        except: #read failed due currupted ini file that can happen due to suddent power of during update
            print "except"
    if( read == False): #file not exist and needs to be creatred
        config = ConfigParser();
        config.add_section(section)
        config.set(section, option, value)
        read = True

    fo=open(configPath, "w+")
    config.write(fo) # Write update config

    return read





"""
function to read configuration from file
"""

def get_config_from_path(configPath, section, option):

    read = False
    result = "none"

    #check if config file exists
    if ( os.path.isfile(configPath)):
        configPath = os.path.realpath(configPath);
        config = ConfigParser();
        #try to read the value from ini file
        try:
            config.read(configPath)
            if config.has_section(section) and config.has_option(section, option):
                result = config.get(section, option)
                read = True
        except: #read failed due currupted ini file that can happen due to suddent power of during update
            print("Error in %s file, have to read it from original ini"%configPath)

    if( read == False ): #not able to read from config File then read from origial ini
        origConfigPath = re.sub("nddevice.ini", "/release/nddevice.ini", configPath)
        if(os.path.isfile(origConfigPath)):#First time case no config available means no software

            configPath = os.path.realpath(origConfigPath);
            config = ConfigParser();
            #try to read the value from original ini file
            try:
                config.read(configPath)
                if config.has_section(section) and config.has_option(section, option):
                    result = config.get(section, option)
                    read = True
            except: #read failure will not happen if happen we need to get the version from cloud or timebeing we can just mark it as 0.0.0
                print("Error in original %s file"%configPath)
        else: #First time case no config available means no software
            print("First time case no software found")

    return result


"""
Function to check process is running or not
"""


def check_process(process):

    proc = subprocess.Popen( 'ps -ef | grep "%s$" | grep -v grep' %process, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT )
    stdout_value = proc.communicate()[0]
    #print '\tstdout:', repr(stdout_value)

    if stdout_value != "" :
        #print 'process executing'
        return True
    else :
        #print 'no process executing'
        return False


"""
Function to call specific binary
"""
def call_binary(filepath):
    result = os.system(filepath)
    print result


#Func to init dict
def init(Dict, key):
    Dict.setdefault(key, [])
    return Dict

#func to add value to dict
def add(Dict, key, value):
    try:
        value = str(value).split("/media/SdCard//")[1]
        Dict[key].append(value)
    except IndexError:
        Dict[key].append(value)
    return Dict

#func to init obj which is used to make report
def init_reportobj(var):
    var = PrettyTable()
    return var

#func to get time stamp from restserver log
def getts(tokens):
    ts = ' '.join(tokens[:2])
    ts = ts.split(',')[0]
    ts = datetime.strptime(ts, '%Y-%m-%d %H:%M:%S')
    return ts

#func to get tracerid from restserver log
def gettracerid(tokens):
    tracer_id = tokens[4]
    tracer_id = tracer_id[1:len(tracer_id) - 1]
    return tracer_id


#Function to add coloumn in the Report File
def addcoloumn(obj, heading, list):
    obj.add_column(heading, list)
    return obj

#Func to write column in file
def writeinfile(var2rite, fp):
    fp.write(str(var2rite))
    fp.write("\n")

#function to convert gmtime to it IST time
def gmttoist(gmtime):
    isttime = gmtime + timedelta(0, 5.5 * 60 * 60)
    return isttime

#function to convert Epoch time to Gmt time
def Epoch_To_Time(epoch_time):
    try:
        epoch_time = int(epoch_time)/1000
        epoch_time = time.strftime('%Y-%m-%d %H:%M:%S',  time.gmtime(epoch_time))
        epoch_time = datetime.strptime(epoch_time, '%Y-%m-%d %H:%M:%S')
        return str(epoch_time)
    except ValueError:
        raise ValueError

def Epoch_To_IST_Time(epoch_time):
    try:
        epoch_time = int(epoch_time)/1000
        epoch_time = time.strftime('%Y-%m-%d %H:%M:%S',  time.gmtime(epoch_time))
        epoch_time = datetime.strptime(epoch_time, '%Y-%m-%d %H:%M:%S')
        isttime = epoch_time + timedelta(0, 5.5 * 60 * 60)
        return str(isttime)
    except ValueError:
        raise ValueError




