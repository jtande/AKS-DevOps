#! /bin/bash
# This script commits and pushes build immage to my docker repository
CURRENT_IMAGE=$1
NEW_TAG_IMAGE=$2

# Tag existing image
docker tag $CURRENT_IMAGE $NEW_TAG_IMAGE

# push the renamed image to the repository
docker push $NEW_TAG_IMAGE
