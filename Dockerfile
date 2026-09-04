# Use the official Debian 13 (Trixie) base image
FROM debian:trixie-slim

# Prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update packages, upgrade the system, and install WSL essentials
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    sudo \
    curl \
    wget \
    git \
    vim \
    ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set the default command to bash
CMD ["/bin/bash"]
