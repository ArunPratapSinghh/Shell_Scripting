#!/bin/bash

echo "Display messages in kernel ring buffer"
dmesg

echo "Display logs stored in the systemd journal"
journalctl

echo "Display logs for a specific unit (service)"
journalctl -u servicename
