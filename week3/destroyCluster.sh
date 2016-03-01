#!/bin/bash

##################################################
#### Increment BASTION_ID to launch new box!  ####
### Otherwise script will behave idempotently ####
##################################################
export PROVISION_STATE="absent"

export AWS_REGION="us-west-2"
export ZONEA="us-west-2a"
export ZONEB="us-west-2b"
export ZONEC="us-west-2c"

export KEYPAIR="xaas-or"
export MGMT_IP="`curl -s icanhazip.com`/32"

/usr/local/bin/ansible-playbook -i contribl/ec2.py ./stage2.yml
/usr/local/bin/ansible-playbook -i contribl/ec2.py ./stage3.yml
/usr/local/bin/ansible-playbook -i contribl/ec2.py ./stage1.yml
