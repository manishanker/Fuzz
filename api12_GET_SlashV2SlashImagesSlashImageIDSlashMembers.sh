#!/bin/bash
echo $1
export token=$2
echo "Checking Twelfth API Call"
echo "This API call is not working"
curl -i -X GET http://49.207.14.224:9292/v2/images/$1/members -H "X-Auth-Token: $token" -H "Content-Type: application/json" -H "Accept: application/json"
sleep 5
