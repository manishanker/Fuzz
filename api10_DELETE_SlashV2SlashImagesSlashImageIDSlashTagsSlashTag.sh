#!/bin/bash
echo $1
export token=$2
echo "Checking Tenth API call"
echo "Checking DELETE /v2/images/{image_id}/tags/{tag}"
curl -i -X DELETE http://49.207.14.224:9292/v2/images/e37e5fca-98c2-4608-a258-52260cd2b69b/tags/$1 -H "X-Auth-Token: $token" -H "Content: application/json" -H "Accept: application/json"
sleep 5
curl -i -X DELETE http://49.207.14.224:9292/v2/images/e37e5fca-98c2-4608-a258-52260cd2b69b/tags/$1 -H "X-Auth-Token: $token" -H "Content: application/json" -H "Accept: application/json"
sleep 5
