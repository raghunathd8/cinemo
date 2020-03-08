#!/bin/bash

echo "Building..."
docker build -t cinemapp public/.
docker save -o cinemapp_pub.tar cinemapp:latest
