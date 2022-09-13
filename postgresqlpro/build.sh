#!/bin/sh

docker build --tag 10.3.80.70:5000/postgrespro-1c:14 .
docker push 10.3.80.70:5000/postgrespro-1c:14
