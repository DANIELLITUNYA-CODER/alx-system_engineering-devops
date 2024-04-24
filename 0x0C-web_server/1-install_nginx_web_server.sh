#!/bin/bash

# Update package lists
apt-get update

# Install Nginx if not already installed
apt-get install nginx -y

# Check if Nginx is installed successfully
if [ $(which nginx) ]; then
    echo "Nginx installation successful."

    # Restart Nginx to apply changes
    service nginx restart

    # Check if Nginx is listening on port 80
    if ss -tnl | grep -q ':80 '; then
        echo "Nginx is listening on port 80."
    else
        echo "Error: Nginx is not listening on port 80."
        exit 1
    fi

    # Create a test HTML file
    echo "Hello World!" > /var/www/html/index.html

    echo "Nginx setup complete."
else
    echo "Error: Nginx installation failed."
    exit 1
fi

