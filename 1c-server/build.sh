#!/bin/bash
PLATFORM_VERSION=8.3.19.1522

docker build \
--build-arg PLATFORM_VERSION=$PLATFORM_VERSION \
--build-arg SERVER_VERSION=8.3.19-1522 \
--build-arg PLATFORM_VERSION=8.3.19.1522 \
--tag 10.3.80.70:5000/1c-server:$PLATFORM_VERSION .

docker image push 10.3.80.70:5000/1c-server:$PLATFORM_VERSION
