#!/bin/bash

chmod 644 cinemapp_int.tar
ssh -t ubuntu@10.10.2.10 'test -f /home/ubuntu/cinemo/ci_cd_pipe/cinemapp_int.tar && mv /home/ubuntu/cinemo/ci_cd_pipe/cinemapp_int.tar /home/ubuntu/cinemo/ci_cd_pipe/archive/cinemapp_int.tar_`date +'%d_%m_%Y-%H-%M'`'
scp cinemapp_int.tar ubuntu@10.10.2.10:/home/ubuntu/cinemo/ci_cd_pipe/
