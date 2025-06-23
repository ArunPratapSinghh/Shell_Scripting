#!/bin/bash

#service status
echo "--------------------------"
echo "service status"
service_name= read -p "enter the service name"
sudo systemctl status $service_name
