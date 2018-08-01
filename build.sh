#!/usr/bin/env bash

. name.sh

if [ "$1" == "nocache" ]; then
  docker build --no-cache -t $CONTAINER_NAME .
else
  docker build -t $CONTAINER_NAME .
fi
