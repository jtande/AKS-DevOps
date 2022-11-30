#! /bin/bash

# This script call the build-push-container to install
# nbgitpuller and push to repository
#
# CC Jacob Fosso Tande 2022-11-29
#
#
# build minimal image
echo "        "
echo "        "
echo " Building Minimal Image"
./build-push-container.sh Dockerfile-min jtandedocker/min-nbk:py-3.10.6-nbpuller

# build data science image
echo "        "
echo "        "
echo " Building Data Science Image"
./build-push-container.sh Dockerfile-ds jtandedocker/datascience-nbk:py-3.10.6-nbpuller

# build deep learning image
echo "        "
echo "        "
echo " Building Deep Learning Image"
./build-push-container.sh Dockerfile-deeplearn jtandedocker/tensorflow-nbk:py-3.10.6-nbpuller

# build allspark image
echo "        "
echo "        "
echo " Building Allspark Image"
./build-push-container.sh Dockerfile-allspark jtandedocker/allspark-nbk:py-3.10.6-nbpuller

