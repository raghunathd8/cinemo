#!/bin/bash

ssh -t ubuntu@10.10.1.10 'test -f /home/ubuntu/cinemo/ci_cd_pipe/deploy_pub.sh && rm /home/ubuntu/cinemo/ci_cd_pipe/deploy_pub.sh'
scp deploy_pub.sh ubuntu@10.10.1.10:/home/ubuntu/cinemo/ci_cd_pipe/
#ssh -t ubuntu@10.10.1.10 'sh /home/ubuntu/cinemo/ci_cd_pipe/deploy_pub.sh'
