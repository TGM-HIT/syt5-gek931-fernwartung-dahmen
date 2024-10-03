# Use an official Ubuntu base image
FROM ubuntu:latest

# Install required packages: OpenSSH Server and Apache2 (or any service for DMZ)
RUN apt-get update && apt-get install -y \
    openssh-server \
    && rm -rf /var/lib/apt/lists/*

# Enable SSH service and set up a non-root user (optional)
RUN mkdir /var/run/sshd

# Set a password for the root user (for simplicity)
RUN echo 'root:password' | chpasswd

# Configure SSH to allow root login
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
# Expose necessary ports
EXPOSE 22 80

CMD service ssh start && tail -f /dev/null
