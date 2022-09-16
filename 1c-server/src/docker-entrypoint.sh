#!/bin/bash

if [ "$1" = "ragent" ]; then
  # exec gosu usr1cv83 /opt/1cv8/x86_64/8.3.20.1996/ragent
  runuser -l root -c '/opt/1cv8/x86_64/8.3.20.1996/ragent'
fi

exec "$@"
