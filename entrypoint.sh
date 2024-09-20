#!/bin/bash
#Autoconfigure the noisemakers interface 
#By: William Cornell
#FOR: MTU ITO Cyber Range 9/20/2024

# Find the active network interface
INTERFACE=$(ip -o -4 route show to default | awk '{print $5}')

if [ -z "$INTERFACE" ]; then
    echo "No network interface found Dummy!"
    exit 1
fi

echo "Replaying traffic on interface: $INTERFACE"

# Replay the pcap file on the detected interface
tcpreplay --intf1=$INTERFACE /pcap/sample.pcap
