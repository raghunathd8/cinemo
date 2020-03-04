#!/bin/bash

echo "Building..."
docker build -t cinemapp /home/ubuntu/cinemo/internal
docker save -o cinemapp_int.tar cinemapp:latest
