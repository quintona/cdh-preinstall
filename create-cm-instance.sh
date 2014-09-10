#!/bin/bash

#create the instance
aws ec2 run-instances --image-id ami-0145d268 --count 1 --instance-type hs1.8xlarge --key-name CDH-Virginia --security-groups CDH 