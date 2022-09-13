#!/bin/bash

docker build --tag 172.17.0.3:5000/1c-server:8.3.20.1996 .
docker push 1c-server:8.3.20.1996
