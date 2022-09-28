#!/bin/bash
PLATFORM_VERSION=8.3.17.2665

docker build \
--build-arg PLATFORM_VERSION=$PLATFORM_VERSION \
--build-arg SERVER_VERSION=8.3.17-2665 \
--build-arg PACKAGE_VERSION=8_3_17_2665 \
--tag 10.3.80.70:5000/1c-server:$PLATFORM_VERSION .

docker image push 10.3.80.70:5000/1c-server:$PLATFORM_VERSION
