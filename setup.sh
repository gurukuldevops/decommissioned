#!/bin/bash

# Load variables from .env file. 
export $(grep -v '^#' .env | xargs)

docker-compose stop nginx

certbot certonly --standalone -d $WEBSITE1_DOMAIN --agree-tos --email $EMAIL_ADDRESS
certbot certonly --standalone -d $WEBSITE2_DOMAIN --agree-tos --email $EMAIL_ADDRESS
certbot certonly --standalone -d $WEBSITE3_DOMAIN --agree-tos --email $EMAIL_ADDRESS

docker-compose start nginx
