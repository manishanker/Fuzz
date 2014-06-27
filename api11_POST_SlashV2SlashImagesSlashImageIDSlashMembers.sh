#!/bin/bash
echo $1
export token=$2
echo "Checking Eleventh API call"
echo "Checking POST /v2/images/{image_id}/members"
curl -i -X POST http://49.207.14.224:9292/v2/images/e37e5fca-98c2-4608-a258-52260cd2b69b/members -H "X-Auth-Token: $token" -H "Content-Type: application/json" -H "Accept: application/json" -d '{"member":"'"$1"'"}'
sleep 5
curl -i -X POST http://49.207.14.224:9292/v2/images/$1/members -H "X-Auth-Token: $token" -H "Content-Type: application/json" -H "Accept: application/json" -d '{"member":"'"$1"'"}'
sleep 5
