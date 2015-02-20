FROM nginx

EXPOSE 80

COPY nginx.conf /etc/nginx/
COPY htpasswd.users /etc/nginx/
RUN chmod 0444 /etc/nginx/htpasswd.users
COPY default.conf /etc/nginx/conf.d/

ENV NGINX_RUN_USER nginx
ENV NGINX_LOG_DIR /var/log/nginx
ENV NGINX_BACKEND_IP 127.0.0.1
ENV NGINX_BACKEND_PORT 8080
ENV NGINX_LISTENER_PORT 8000

ADD nginx.sh /nginx.sh
RUN chmod +x /nginx.sh
CMD [ "/nginx.sh" ]
