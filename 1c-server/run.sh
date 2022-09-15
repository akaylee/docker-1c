#!/bin/sh

# docker pull 10.3.80.70:5000/1c-server:8.3.20.1996
docker run --name 10.3.80.70:5000/1c-server:8.3.20.1996 \
  --net host \
  --detach \
  --restart=always \
  --volume 1c-server-home:/home/usr1cv8 \
  --volume 1c-server-logs:/var/log/1C \
  --volume /etc/localtime:/etc/localtime:ro \
  1c-server
