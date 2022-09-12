#!/bin/sh

docker build --tag 10.3.80.70:5000/1c-server:8.3.20.1996 .
docker push postgrespro-1c:14
