#!/bin/bash
echo $1
export token=$2
echo "Checking PUT /v2/images/{image_id}/file"
curl -i -X PUT -H "X-Auth-Token: $token" -H "Content-Type: application/octet-stream" -d @/home/manishanker/openstack-demo/fuzzingapi/mini.iso http://49.207.14.224:9292/v2/images/e37e5fca-98c2-4608-a258-52260cd2b69b/file
sleep 5
curl -i -X PUT -H "X-Auth-Token: $token" -H "Content-Type: application/octet-stream" -d @/home/manishanker/openstack-demo/fuzzingapi/mini.iso http://49.207.14.224:9292/v2/images/$1/file
sleep 5

