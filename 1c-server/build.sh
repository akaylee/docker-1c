#!/bin/bash
SERVER_VERSION=8.3.19.1522

docker build --tag 10.3.80.70:5000/1c-server:$SERVER_VERSION .
docker image push 10.3.80.70:5000/1c-server:$SERVER_VERSION
