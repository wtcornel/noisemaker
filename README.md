# noisemaker
A docker container that replays pcap files to simulate network traffic.
By: William Cornell
FOR: MTU ITO Cyber Range 9/20/2024

## Setup

1. Clone this repository:

    ```bash
    git clone https://github.com/wtcornel/noisemaker
    cd noisemaker
    ```

2. Place the `.pcap` file containing the background traffic in the project directory. This `.pcap` file will be replayed in the Docker container.

3. Build the Docker image:

    ```bash
    docker build -t pcap-replay .
    ```

## Running the Container

### Option 1: Basic Isolation (Bridge Network)

This is the default Docker networking mode. The container will be isolated from your host machine's network.

```bash
docker run --rm pcap-replay
```
### Option 2: No Isolation (Host Network)

This will not isolate the container from the Host's network

```bash
docker run --rm --network=host pcap-replay
```
