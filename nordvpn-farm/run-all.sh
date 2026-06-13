#!/bin/bash

# Command you want to run
COMMAND="echo 'VPN IP:' && wget -qO- ifconfig.me"

echo "Waiting for all VPNs to connect..."
sleep 15   # Give more time for OpenVPN to connect

echo "Running command on all nord containers"
echo "============================================"

for container in $(docker ps --format "{{.Names}}" | grep "^nord-"); do
    echo "=== Running on $container ==="
    
    # Try up to 3 times
    for attempt in {1..3}; do
        docker exec $container sh -c "$COMMAND" && break
        echo "  (Attempt $attempt failed - retrying...)"
        sleep 8
    done
    
    echo "----------------------------------------"
done
