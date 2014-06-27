#!/bin/bash
echo $1
export token=$2
echo "Checking Fifth API Call"
echo "Checking PATCH /v2/images/{image_id}"
curl -i -X PATCH 'http://49.207.14.224:9292/v2/images/e37e5fca-98c2-4608-a258-52260cd2b69b' -H "Content-Type: application/openstack-images-v2.1-json-patch" -H "Accept: application/json" -H "X-Auth-Token: $token" -d '[{"op" : "replace", "path": "/name", "value": "'"$1"'"}]'
sleep 5
