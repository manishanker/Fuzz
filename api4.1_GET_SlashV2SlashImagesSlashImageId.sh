#!/bin/bash
#shell script to call combinations of API calls for GET /v2/images/{image_id}
while read line
do
    imageid=$line
    sleep 1
    echo "Text read from file images.txt - $imageid"
    curl -i -X GET http://49.207.14.224:9292/v2/images/$imageid -H "X-Auth-Token: $token" -H "Content-Type: application/json" -H "Accept: application/json"
    sleep 2
    curl -i -X GET http://49.207.14.224:9292/v2/images/$2$imageid -H "X-Auth-Token: $token" -H "Content-Type: application/json" -H "Accept: application/json"
    sleep 2
done < $1
