#!/bin/bash
image_name=role-mkdir
volume=`pwd`/../:/ansible

docker build -f ./centos/Dockerfile -t $image_name .

echo $volume

docker run -v $volume --rm -i -t $image_name