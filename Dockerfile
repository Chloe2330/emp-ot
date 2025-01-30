FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set working directory 
WORKDIR /emp-ot

COPY . /emp-ot 

# Copy local installation script
COPY scripts/install.py /emp-ot/install.py

RUN python3 install.py --install

# Clone, build, and install emp-tool
RUN git clone https://github.com/emp-toolkit/emp-tool.git --branch master && \
    cd emp-tool && \
    cmake . && \
    make -j4 && \
    make install

# Clone, build, and install emp-ot
RUN cmake . && \
    make -j4 && \
    make install