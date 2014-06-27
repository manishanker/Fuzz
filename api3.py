#!/usr/bin/python -tt
"""Python script to start sfuzz with basic configuration and use the fuzzing payload generated by it for fuzzing
openstack services using curl command"""
import subprocess
import os
import json
token = ""
sfuzzconfig = "/home/test/sfuzz/pythonscript/sfuzzconfig"
#Function to get token from keystone and store it in jsonoutput.txt
def get_token():
                print "\nGetting token from keystone\n"
                #password = raw_input("Enter authentication password for getting keystone token : ")
                password="password"
                subprocess.call(['./tokengen.sh',password])

#Function to parse the json output in output.txt to get the token and export it in environmental variable token
def parse_json():
        file_object = open('jsonoutput.txt','r')
        data=""
        for line in file_object:
                data += line
        jsondata = json.loads(data)
        token = jsondata['access']['token']['id']
        print token

        file_object1 = open("fuzzload", "r")
        i =1
        print "\n\nStarting  Third(3) API FUZZ test\n\n"
        for line in file_object1:
                print "\nFuzz Test ", i
                line = line[:-1]
                subprocess.call(['./api3_GET_SlashV2SlashImages.sh', line, token])
                i +=1
        print "\n\nEnd of Third(3) API FUZZ test\n\n"
        file_object1.close()
get_token()
parse_json()
