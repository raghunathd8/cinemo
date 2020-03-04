#!/bin/bash

echo "Building..."
docker build -t cinemapp .
docker save -o cinemapp_int.tar cinemapp:latest
