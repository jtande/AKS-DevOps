#! /bin/bash
# This file using the Dockerfile to build the jupyter hub
# The build image is then named and taged
# Renamed and tagged images are pull to repository
# User must be log in to their repository

# Build then name and tag image
DOCKERFILE=$1
NAME_TAG=$2
sudo docker build -f $DOCKERFILE -t $NAME_TAG .

# push image to repository
sudo docker push $NAME_TAG
