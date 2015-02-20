#!/bin/bash

# Using environment variables to set nginx configuration
[ -z "${NGINX_RUN_USER}" ] && echo "\$NGINX_RUN_USER is not set" || sed -i "s/NGINX_RUN_USER/${NGINX_RUN_USER}/" /etc/nginx/nginx.conf
[ -z "${NGINX_LOG_DIR}" ] && echo "\$NGINX_LOG_DIR is not set" || sed -i "s#NGINX_LOG_DIR#${NGINX_LOG_DIR}#" /etc/nginx/nginx.conf

[ -z "${NGINX_BACKEND_IP}" ] && echo "\$NGINX_BACKEND_IP is not set" || sed -i "s/NGINX_BACKEND_IP/${NGINX_BACKEND_IP}/" /etc/nginx/conf.d/default.conf
[ -z "${NGINX_BACKEND_PORT}" ] && echo "\$NGINX_BACKEND_PORT is not set" || sed -i "s/NGINX_BACKEND_PORT/${NGINX_BACKEND_PORT}/" /etc/nginx/conf.d/default.conf
[ -z "${NGINX_SERVER_NAME}" ] && echo "\$NGINX_SERVER_NAME is not set" || sed -i "s/#server_name NGINX_SERVER_NAME;/server_name ${NGINX_SERVER_NAME};/" /etc/nginx/conf.d/default.conf
[ -z "${NGINX_LOG_DIR}" ] && echo "\$NGINX_LOG_DIR is not set" || sed -i "s#NGINX_LOG_DIR#${NGINX_LOG_DIR}#" /etc/nginx/conf.d/default.conf

# Start nginx
/etc/init.d/nginx start
