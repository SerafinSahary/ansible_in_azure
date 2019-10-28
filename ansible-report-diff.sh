#!/bin/bash

ansible-playbook -i hosts.yml -l all --check --diff www.yml
