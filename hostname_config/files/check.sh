#!/bin/bash
awk '{print $2}' /etc/hosts > /home/devops/hosts
file=$(cat /home/devops/hosts)
name="phpmatest"
i=0
for line in $file
do
if [[ "$line" == "phpmatest" ]]; then
	i=$(($i+1))
fi

done

if [[ $i == 0 ]]; then


        ip=$(sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' devops_phpmatest_1)
 echo "$ip phpmatest" >> /etc/hosts
fi

