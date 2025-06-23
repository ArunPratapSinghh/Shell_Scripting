#!/bin/bash

#service status
echo "--------------------------"
echo "service status"
read -p "enter the service name::" service_name
sudo systemctl status $service_name
sudo systemctl restart $service_name

echo "----service status and restarted has been completed.----"
