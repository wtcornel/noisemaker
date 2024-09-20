FROM ubuntu:20.04

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    tcpdump \
    tcpreplay \
    iproute2 \
    iputils-ping \
    net-tools \
    && rm -rf /var/lib/apt/lists/*

# Copy the pcap file to the container
COPY sample.pcap /pcap/sample.pcap

# Copy the script to auto-detect interface and replay traffic
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set entrypoint to the script
ENTRYPOINT ["/entrypoint.sh"]
