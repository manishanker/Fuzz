#!/bin/bash
echo $1
export token=$2
echo "Checking Fourth API call"
echo "Checking GET v2/images/{image_id}"
curl -i -X GET http://49.207.14.224:9292/v2/images/$1 -H "X-Auth-Token: $token" -H "Content-Type: application/json" -H "Accept: application/json"
sleep 5
