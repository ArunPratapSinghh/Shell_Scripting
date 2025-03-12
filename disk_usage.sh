#!/bin/bash

echo "Show free and used space on mounted filesystems"
df -h

echo "Show free and used inodes on mounted filesystems"
df -i

echo "Display disks partitions sizes and types"
fdisk -l

echo "Display disk usage for all files and directories in human readable format"
du -ah

echo "Display total disk usage off the current directory"
du -sh
