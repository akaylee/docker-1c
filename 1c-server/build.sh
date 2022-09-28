#!/bin/bash
PLATFORM_VERSION=8.3.18.1902

docker build \
--build-arg PLATFORM_VERSION=$PLATFORM_VERSION \
--build-arg SERVER_VERSION=8.3.18-1902 \
--build-arg PACKAGE_VERSION=8_3_18_1902 \
--tag 10.3.80.70:5000/1c-server:$PLATFORM_VERSION .

docker image push 10.3.80.70:5000/1c-server:$PLATFORM_VERSION
