#!/bin/bash

#create data nodes
aws ec2 run-instances --image-id ami-0145d268 --count 12 --instance-type hs1.8xlarge --key-name CDH-Virginia --security-groups CDH --block-device-mappings '[{"DeviceName": "/dev/sda1","Ebs": {"VolumeSize": 100,"DeleteOnTermination": true}},{ "DeviceName":"/dev/xvdb", "VirtualName":"ephemeral0" },{ "DeviceName":"/dev/xvdc", "VirtualName":"ephemeral1" },{ "DeviceName":"/dev/xvdd", "VirtualName":"ephemeral2" },{ "DeviceName":"/dev/xvde", "VirtualName":"ephemeral3" },{ "DeviceName":"/dev/xvdf", "VirtualName":"ephemeral4" },{ "DeviceName":"/dev/xvdg", "VirtualName":"ephemeral5" },{ "DeviceName":"/dev/xvdh", "VirtualName":"ephemeral6" },{ "DeviceName":"/dev/xvdi", "VirtualName":"ephemeral7" },{ "DeviceName":"/dev/xvdj", "VirtualName":"ephemeral8" },{ "DeviceName":"/dev/xvdk", "VirtualName":"ephemeral9" },{ "DeviceName":"/dev/xvdl", "VirtualName":"ephemeral10" },{ "DeviceName":"/dev/xvdm", "VirtualName":"ephemeral11" },{ "DeviceName":"/dev/xvdn", "VirtualName":"ephemeral12" },{ "DeviceName":"/dev/xvdo", "VirtualName":"ephemeral13" },{ "DeviceName":"/dev/xvdp", "VirtualName":"ephemeral14" },{ "DeviceName":"/dev/xvdq", "VirtualName":"ephemeral15" },{ "DeviceName":"/dev/xvdr", "VirtualName":"ephemeral16" },{ "DeviceName":"/dev/xvds", "VirtualName":"ephemeral17" },{ "DeviceName":"/dev/xvdt", "VirtualName":"ephemeral18" },{ "DeviceName":"/dev/xvdu", "VirtualName":"ephemeral19" },{ "DeviceName":"/dev/xvdv", "VirtualName":"ephemeral20" },{ "DeviceName":"/dev/xvdw", "VirtualName":"ephemeral21" },{ "DeviceName":"/dev/xvdx", "VirtualName":"ephemeral22" },{ "DeviceName":"/dev/xvdy", "VirtualName":"ephemeral23" }]'