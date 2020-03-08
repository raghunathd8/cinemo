#!/bin/bash

chmod 755 build_int.sh
ssh -t ubuntu@10.10.1.10 'rm /home/ubuntu/cinemo/ci_cd_pipe/build_int.sh'
scp build_int.sh ubuntu@10.10.1.10:/home/ubuntu/cinemo/ci_cd_pipe/
#ssh -t ubuntu@10.10.1.10 'sh /home/ubuntu/cinemo/ci_cd_pipe/build_int.sh'
