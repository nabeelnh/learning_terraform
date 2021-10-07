#!/bin/bash

# Install apache 
yum update -y
yum install -y httpd.x86_64

# Start the apache Daemon
systemctl start httpd.service
systemctl enable httpd.service

# Create an apache index file to be viewed by clients
echo "Hello World from Nabeel" > /var/www/html/index.html