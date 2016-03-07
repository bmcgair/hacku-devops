#!/bin/bash

##################################################
#### Increment BASTION_ID to launch new box!  ####
### Otherwise script will behave idempotently ####
##################################################
export CLUSTER_NAME="my-ecs-cluster"
export PROVISION_STATE="absent"

export AWS_REGION="us-west-2"
export ZONEA="us-west-2a"
export ZONEB="us-west-2b"
export ZONEC="us-west-2c"

export KEYPAIR="xaas-or"
export MGMT_IP="`curl -s icanhazip.com`/32"

/usr/local/bin/aws ec2 describe-security-groups --output text|grep SECURITYGROUPS| cut -f 3 > /tmp/groups

/usr/local/bin/ansible-playbook -i contribl/ec2.py ./teardown.yml -vv

#rm /tmp/groups
