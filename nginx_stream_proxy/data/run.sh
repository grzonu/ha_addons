#!/usr/bin/env bashio
set -e

ADDRESS=$(bashio::config 'address')

# Prepare config file
sed -i "s/%%ADDRESS%%/$ADDRESS/g" /etc/nginx.conf

# start server
bashio::log.info "Running nginx..."
exec nginx -c /etc/nginx.conf < /dev/null