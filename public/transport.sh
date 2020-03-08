#!/bin/bash

chmod 644 cinemapp_pub.tar
ssh -t ubuntu@10.10.1.10 'test -f /home/ubuntu/cinemo/ci_cd_pipe/cinemapp_pub.tar && mv /home/ubuntu/cinemo/ci_cd_pipe/cinemapp_pub.tar /home/ubuntu/cinemo/ci_cd_pipe/archive/cinemapp_pub.tar_`date +'%d_%m_%Y-%H-%M'`'
scp cinemapp_pub.tar ubuntu@10.10.1.10:/home/ubuntu/cinemo/ci_cd_pipe/
