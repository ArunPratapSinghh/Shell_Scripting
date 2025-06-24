
#!/bin/bash

echo "________________disk usage details________________"

Details_list="Backup_disk_Detials.txt"
echo "Full disk details"
df -h >> $Details_list

echo "/dev/sda1 disk usage"
df -h |grep "/dev/sda1"|awk "{print $5}" >> $Details_list

echo "______________Disk script completed________________"
