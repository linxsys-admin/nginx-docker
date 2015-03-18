#!/bin/bash

# Using environment variables to set nginx configuration
[ -z "${NGINX_RUN_USER}" ] && echo "\$NGINX_RUN_USER is not set" || sed -i "s/NGINX_RUN_USER/${NGINX_RUN_USER}/" /etc/nginx/nginx.conf
[ -z "${NGINX_LOG_DIR}" ] && echo "\$NGINX_LOG_DIR is not set" || sed -i "s#NGINX_LOG_DIR#${NGINX_LOG_DIR}#" /etc/nginx/nginx.conf

# Start nginx
/etc/init.d/nginx start
