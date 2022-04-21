FROM nginx

COPY ./src /usr/share/nginx/html/

COPY ./nginx /etc/nginx/conf.d/

HEALTHCHECK --interval=5m --timeout=3s CMD curl -f http://localhost || exit 1