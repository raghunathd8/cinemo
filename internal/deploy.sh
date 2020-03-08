#!/bin/bash

ssh -t ubuntu@10.10.2.10 'test -f /home/ubuntu/cinemo/ci_cd_pipe/deploy_int.sh && rm /home/ubuntu/cinemo/ci_cd_pipe/deploy_int.sh'
scp deploy_int.sh ubuntu@10.10.2.10:/home/ubuntu/cinemo/ci_cd_pipe/
#ssh -t ubuntu@10.10.2.10 'sh /home/ubuntu/cinemo/ci_cd_pipe/deploy_int.sh'
