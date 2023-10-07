#!/bin/bash

 ip=$(sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' devops_phpmatest_1)
 echo "$ip phpmatest" >> /etc/hosts


