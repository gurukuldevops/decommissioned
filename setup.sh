#!/bin/bash

# Load variables from .env file.
export $(grep -v '^#' .env | xargs)

service nginx stop | true

certbot certonly --standalone -d $WEBSITE1_DOMAIN --agree-tos --email $EMAIL_ADDRESS
certbot certonly --standalone -d $WEBSITE2_DOMAIN --agree-tos --email $EMAIL_ADDRESS
certbot certonly --standalone -d $WEBSITE3_DOMAIN --agree-tos --email $EMAIL_ADDRESS

service nginx start | true
