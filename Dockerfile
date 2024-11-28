# Start with Ubuntu base image
FROM ubuntu:22.04

# Suppress iterative prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install essential dependencies to read and write compressed files 
# and install samtool by using cache more efficiently
RUN apt-get update && apt-get install -y \
    git \
    gcc \
    g++ \
    build-essential \
    zlib1g-dev \
    make \
    samtools \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

# Clean up apt cache 
RUN apt-get clean

# Install minigraph
RUN git clone https://github.com/lh3/minigraph && \
    cd minigraph && \
    sed -i 's/-msse4//g' Makefile && \
    make && \
    cp minigraph /usr/local/bin && \
    cd .. && \
    rm -rf minigraph  

# Set working directory
WORKDIR /test_env

# Default command
CMD ["/bin/bash"]

