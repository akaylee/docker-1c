#!/bin/bash

docker build --tag 1c-server:8.3.20.1996 .
docker tag 1c-server:8.3.20.1996 10.3.80.70:5000/1c-server:8.3.20.1996
docker push 1c-server:8.3.20.1996
