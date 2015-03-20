FROM nginx

EXPOSE 80 443

COPY nginx.conf /etc/nginx/
COPY index.html /usr/share/nginx/html/

ENV NGINX_RUN_USER nginx
ENV NGINX_LOG_DIR /var/log/nginx
ENV NGINX_BACKEND_IP 127.0.0.1

ADD nginx.sh /nginx.sh
RUN chmod +x /nginx.sh
CMD [ "/nginx.sh" ]
