#!/usr/bin/env bashio
set -e

# start server
bashio::log.info "Running nginx..."
exec nginx -c /etc/nginx.conf < /dev/null