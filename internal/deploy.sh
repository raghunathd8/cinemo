#!/bin/bash

ssh -t ubuntu@10.10.2.10 'rm /home/ubuntu/cinemo/ci_cd_pipe/deploy_int.sh'
scp deploy_int.sh ubuntu@10.10.2.10:/home/ubuntu/cinemo/ci_cd_pipe/
#ssh -t ubuntu@10.10.1.10 'sh /home/ubuntu/cinemo/ci_cd_pipe/build_int.sh'
