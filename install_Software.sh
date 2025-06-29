#!/bin/bash

# ###List of IPs or Hostnames of the Linux machines
MACHINES=("192.168.1.10" "192.168.1.11" "192.168.1.12")

# Loop over each machine
for MACHINE in "${MACHINES[@]}"
do
    echo "Installing Git on $MACHINE..."

    # Run the installation commands remotely using SSH
    ssh user@$MACHINE << 'EOF'
        # Update the package manager and install Git
        if [ -f /etc/lsb-release ]; then
            # Debian/Ubuntu-based system
            sudo apt update && sudo apt install -y git
        elif [ -f /etc/redhat-release ]; then
            # CentOS/RHEL-based system
            sudo yum install -y git
        else
            echo "Unsupported distribution"
            exit 1
        fi
    EOF

    if [ $? -eq 0 ]; then
        echo "Git installed successfully on $MACHINE."
    else
        echo "Failed to install Git on $MACHINE."
    fi
done
