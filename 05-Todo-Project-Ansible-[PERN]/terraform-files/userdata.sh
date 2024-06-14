#! /bin/bash
hostnamectl set-hostname managed-node

alias p=ansible-playbook

dnf update -y

