#!/bin/bash

##################################################
#### Increment BASTION_ID to launch new box!  ####
### Otherwise script will behave idempotently ####
##################################################
export BASTION_IDEMPOTENT_ID="83"

export AWS_REGION="us-west-2"
export ZONEA="us-west-2a"
export ZONEB="us-west-2b"
export ZONEC="us-west-2c"

export VPC_BASE="10.10"
export KEYPAIR="ho-devops"
export MGMT_IP="`curl -s icanhazip.com`/32"

ANSIBLE="ansible-playbook --vault-password-file ../vault_pass.txt -i contribl/ec2.py"

$ANSIBLE ./stage1.yml
$ANSIBLE ./stage2.yml
$ANSIBLE ./stage3.yml
