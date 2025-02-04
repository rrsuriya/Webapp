#!/bin/bash
# This script is optional. For a simple HTML site, it may not be necessary.

# Update the package manager and install Apache (for example)
sudo yum update -y
sudo yum install -y httpd

# Start the Apache service
sudo systemctl start httpd
sudo systemctl enable httpd

# Adjust firewall rules (if needed)
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload

echo "Apache installed and running!"
