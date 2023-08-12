#!/bin/bash

# Load variables from .env file
export $(grep -v '^#' .env | xargs)

# Stop Nginx
docker-compose stop nginx

# Renew certificates
certbot renew --quiet

# Start Nginx
docker-compose start nginx
