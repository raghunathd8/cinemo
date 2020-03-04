#!/bin/bash

echo "Building..."
docker build -t cinemapp internal/.
docker save -o cinemapp_int.tar cinemapp:latest
