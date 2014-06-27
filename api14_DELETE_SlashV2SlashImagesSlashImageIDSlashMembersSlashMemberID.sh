#!/bin/bash
echo $1
export token=$2
echo "Checking 14th API Call"
echo "Checking DELETE /v2/images/{image_id}/members/{member_id}"
curl -i -X DELETE http://49.207.14.224:9292/v2/images/$1/members/dbe469ccafde46268cf89176025df114 -H "X-Auth-Token: $token"
sleep 5
curl -i -X DELETE http://49.207.14.224:9292/v2/images/e37e5fca-98c2-4608-a258-52260cd2b69b/members/$1 -H "X-Auth-Token: $token"
sleep 5
curl -i -X DELETE http://49.207.14.224:9292/v2/images/$1/members/$1 -H "X-Auth-Token: $token"
sleep 5

