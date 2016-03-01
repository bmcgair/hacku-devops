#!/bin/bash

export AWS_REGION_CODE="us-west-2"
export AWS_REGION_NAME="Oregon"
export VPC_BASE="10.10"
export KEYPAIR="ho-devops"
export AMI="ami-9abea4fb"
/usr/local/bin/ansible-playbook playbook.yml --vault-password-file ../vault_pass.txt 
