#!/bin/bash

# Load the environment variables
source .env

# Create the SQL file for database initialization
cat > db-init.sql <<EOF
CREATE DATABASE IF NOT EXISTS \`${WEBSITE1_DB_NAME}\`;
CREATE DATABASE IF NOT EXISTS \`${WEBSITE2_DB_NAME}\`;
CREATE DATABASE IF NOT EXISTS \`${WEBSITE3_DB_NAME}\`;
EOF
