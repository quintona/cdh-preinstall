#!/bin/bash

# Quick and dirty cluster update script, based on a hack by Stuart Horsman
# author: quintona@gmail.com

keyFile=$1
red='\033[0;31m'
NC='\033[0m'

if [ $# != 1 ]
then
	echo "usage: run_it.sh <keyFile.pem>"
	exit 1
fi

for host in `cat hosts.txt`
do
	echo -e "${red}--> Creating cloudera directory on $host...${NC}"
	ssh -i $keyFile -o "StrictHostKeyChecking no" ubuntu@$host 'mkdir -p cloudera/files'

	for script in `cat scripts.txt`
	do
		echo -e "${red}--> Copying $script to $host...${NC}"
		scp -i $keyFile -o "StrictHostKeyChecking no" $script ubuntu@$host:cloudera
		echo -e "${red}--> Executing $script on $host...${NC}"
		ssh -i $keyFile -o "StrictHostKeyChecking no" ubuntu@$host -t "sudo bash /home/ubuntu/cloudera/$script" &
	done
done

wait

exit 0
