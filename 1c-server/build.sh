#!/bin/bash

docker build --tag 10.3.80.70:5000/1c-server:8.3.20.1996 .
docker image push 10.3.80.70:5000/1c-server:8.3.20.1996

