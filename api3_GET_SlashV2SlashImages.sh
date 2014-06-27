#!/bin/bash
echo $1
export token=$2
echo "Checking Third API Call GET /v2/images" 
echo "Checking GET v2/images"
sleep 3
curl -i -X GET http://49.207.14.224:9292/v2/images/$1 -H "X-Auth-Token: $token" -H "Content-Type: application/json" -H "Accept: application/json"
sleep 5
echo "Checking GET /v2/images?name='<random_input>'"
curl -i -X GET http://49.207.14.224:9292/v2/images?name=$1 -H "X-Auth-Token: $token" -H "Content-Type: application/json" -H "Accept: application/json"
sleep 5
