#!/bin/bash

docker stop cinemapp
docker rm cinemapp
docker rmi cinemapp
docker load -i /home/ubuntu/cinemo/ci_cd_pipe/cinemapp_int.tar
docker run --name cinemapp -p 80:80 -d cinemapp_latest
