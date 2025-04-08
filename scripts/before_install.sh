#!/bin/bash
# Install Python if not installed
if ! [ -x "$(command -v python3)" ]; then
    apt-get update
    apt-get -y install python3 python3-pip
fi

# Create app directory if it doesn't exist
mkdir -p /var/www/html/flask-app