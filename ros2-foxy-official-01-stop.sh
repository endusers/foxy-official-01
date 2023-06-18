#!/bin/bash

cd ros-foxy-official
xhost +local:
docker-compose -p rosenv stop $@
xhost -local:
