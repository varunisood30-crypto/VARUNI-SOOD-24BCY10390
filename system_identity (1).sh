#!/bin/bash

echo "--- SYSTEM IDENTITY REPORT ---"

if [ -f /etc/os-release ]; then
    # Linux
    OS=$(grep '^PRETTY_NAME' /etc/os-release | cut -d'=' -f2 | tr -d '"')
    UPTIME=$(uptime -p)
else
    # Mac
    OS=$(sw_vers -productName)
    UPTIME=$(uptime)
fi

echo "OS Name: $OS"
echo "Kernel: $(uname -r)"
echo "User: $(whoami)"
echo "Uptime: $UPTIME"

echo "------------------------------"