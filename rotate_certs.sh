#!/bin/bash

read -rsp "AWS_ACCESS_KEY: " AWS_ACCESS_KEY
echo

read -rsp "AWS_SECRET_KEY: " AWS_SECRET_KEY
echo

ansible-playbook ./playbooks/nginx.yml -e "aws_access_key=$AWS_ACCESS_KEY aws_secret_key=$AWS_SECRET_KEY"
