#!/bin/bash

printf "["
for i in {1..24}
do
	ord=$((${i} + 97))
	letter=$(printf \\$(printf '%03o' ${ord}))
	index=$((${i} -1))
	printf "{ \"DeviceName\":\"/dev/xvd${letter}\", \"VirtualName\":\"ephemeral${index}\" },"
done
printf "\n"