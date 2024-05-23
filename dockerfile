# Use the official Ubuntu image as base
FROM ubuntu:latest

# Update package lists and install basic packages
RUN apt-get update && \
    apt-get install -y \
    sudo \
    curl \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Set up a non-root user (optional)
RUN useradd -ms /bin/bash myuser
USER myuser

# Set the working directory
WORKDIR /home/myuser

# Command to run when the container starts
CMD ["bash"]
