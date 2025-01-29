FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    python3 \
    && rm -rf /var/lib/apt/lists/*

# Set working directory 
WORKDIR /emp

# Download and run the installation script
RUN wget https://raw.githubusercontent.com/Chloe2330/emp-ot/master/scripts/install.py 
