#!/bin/bash
#shell script to change directory to devstack and get glance image-list
cd 
cd openstack-demo/devstack
source openrc admin admin
glance image-list>../fuzzingapi/image-list.txt
cat $(glance image-list)
echo "Successfully generated list of Glance Images"
