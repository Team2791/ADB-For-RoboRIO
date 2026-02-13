#!/bin/bash


DOCKER_IMAGE=wpilib/roborio-cross-ubuntu:2026-22.04-py314

docker pull $DOCKER_IMAGE
docker run -v ${PWD}:/artifacts ${DOCKER_IMAGE} bash -c "./build.sh"

#Cleanup
rm -rf src build 

#Copy install files to final location
cp out/* ../install_files/usr/lib/android-sdk/platform-tools
cp out/*.so.* ../install_files/usr/lib/arm-linux-gnueabi