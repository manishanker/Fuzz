#!/bin/bash
#Shell script to take input from file images.txt
echo $3
export token=$2
curl -i -X GET http://49.207.14.224:9292/ -H "X-Auth-Token: $token"
sleep 5
while read line
do
    name=$line
    echo $(name:0:36)
    echo $3
    sleep 3
    echo "Text read from file - $name"
    sleep 2
    echo "mani"
    sleep 5
    curl -i -X GET http://49.207.14.224:9292/v2/images -H "X-Auth-Token: $token"
    sleep 3
done < $1
