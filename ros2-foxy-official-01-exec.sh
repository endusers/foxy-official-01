#!/bin/bash

cd ros-foxy-official
docker-compose -p rosenv exec $@ ros2-foxy-official-01 /bin/bash
