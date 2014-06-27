#!/bin/bash
#shell script to Fuzz Openstack API
echo $1
export token=$2
echo "Checking First API Call"
echo "checking GET / "
sleep 5
curl -i -X GET http://49.207.14.224:9292/$1 -H "X-Auth-Token: $token" -H "Content-Type: application/json" -H "Accept: application/json"
sleep 5
