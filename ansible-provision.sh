#!/bin/bash

#ansible-playbook -i hosts.yml -l $1 --tags=$2 www.yml
ansible-playbook -i hosts.yml -l all www.yml

