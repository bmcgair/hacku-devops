#!/bin/bash

##################################################
#### Increment BASTION_ID to launch new box!  ####
### Otherwise script will behave idempotently ####
##################################################
<<<<<<< HEAD
export BASTION_IDEMPOTENT_ID="114"
=======
export BASTION_IDEMPOTENT_ID="63"
export PROVISION_STATE="present"
>>>>>>> 0a6bc3804efff7fbbf4e5673bf27bbeb0828eeb0

export AWS_REGION="us-west-2"
export ZONEA="us-west-2a"
export ZONEB="us-west-2b"
export ZONEC="us-west-2c"

export VPC_BASE="10.10"
export KEYPAIR="xaas-or"
export MGMT_IP="`curl -s icanhazip.com`/32"

/usr/local/bin/ansible-playbook -i contribl/ec2.py ./stage1.yml -vv --ask-vault-pass
/usr/local/bin/ansible-playbook -i contribl/ec2.py ./stage2.yml -vv --ask-vault-pass
/usr/local/bin/ansible-playbook -i contribl/ec2.py ./stage3.yml -vv --ask-vault-pass
