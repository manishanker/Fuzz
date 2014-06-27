#!/bin/bash
echo $1
export token=$2
echo "Checking 18th API call"
echo "Checking GET /v2/schemas/members"
curl -i -X GET http://49.207.14.224:9292/v2/schemas/members -H "X-Auth-Token: $token" -H "Content-Type: application/json" -H "Accept: application/json"
sleep 5
curl -i -X GET http://49.207.14.224:9292/v2/schemas/members$1 -H "X-Auth-Token: $token" -H "Content-Type: application/json" -H "Accept: application/json"
sleep 5
