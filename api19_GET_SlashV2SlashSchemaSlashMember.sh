#!/bin/bash
echo $1
export token=$2
echo "Checking 19th API call"
echo "Checking GET /v2/schemas/member"
curl -i -X GET http://49.207.14.224:9292/v2/schemas/member -H "X-Auth-Token: $token" -H "Content-Type: application/json" -H "Accept: application/json"
sleep 5
curl -i -X GET http://49.207.14.224:9292/v2/schemas/member$1 -H "X-Auth-Token: $token" -H "Content-Type: application/json" -H "Accept: application/json"
sleep 5
