#!/bin/bash
#Description: clean my docker images
#Date: 3/12/2020
#Author: Ruben Louis jean

#echo -e "\n Cleanup docker images"
for i in $(docker images | awk '{print$3}' | grep -v IMAGE);
do
docker rmi -f ${i}
done
