#!/bin/bash

##################################################
#### Increment BASTION_ID to launch new box!  ####
### Otherwise script will behave idempotently ####
##################################################
export BASTION_IDEMPOTENT_ID="79"

export PROVISION_STATE="present"

export AWS_REGION="us-east-1"
export ZONEA="us-east-1a"
export ZONEB="us-east-1b"
export ZONEC="us-east-1e"

export VPC_BASE="10.20"
export KEYPAIR="xaas-or"
export MGMT_IP="`curl -s icanhazip.com`/32"

/usr/local/bin/ansible-playbook -i contribl/ec2.py ./stage1.yml
/usr/local/bin/ansible-playbook -i contribl/ec2.py ./stage2.yml
/usr/local/bin/ansible-playbook -i contribl/ec2.py ./stage3.yml
