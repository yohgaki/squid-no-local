#!/usr/bin/env bash

. name.sh

echo $CONTAINER_NAME
echo $NAME

if [ "$1" == "sh" ]; then
  docker run --rm --name $NAME -it $CONTAINER_NAME /bin/sh
else
  docker run -d --rm --name $NAME -p 3128:3128 $CONTAINER_NAME squid -YCN
fi

