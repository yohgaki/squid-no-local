#!/usr/bin/env bash

. name.sh

echo $CONTAINER_NAME
echo $NAME

docker run --rm --name $NAME -it $CONTAINER_NAME sh

