#!/bin/bash

docker build \
--build-arg PACKAGE_VERSION=8_3_19_1522 \
--build-arg SERVER_VERSION=8.3.19-1522 \
--build-arg PACKAGE_VERSION=8.3.19.1522 \
--tag 10.3.80.70:5000/1c-server:$PACKAGE_VERSION .
docker image push 10.3.80.70:5000/1c-server:$PACKAGE_VERSION
