#!/bin/sh

echo Enter the IP of the server that you want to install NGINX,PSSQL and Python App!
read ip
echo
echo $ip >> variables
ansible-playbook nginx.yaml  