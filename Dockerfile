FROM nginx:1.21-alpine

LABEL maintainer="Rafael Conceição - https://github.com/rafaelonline"

COPY conf.d/ /etc/nginx/conf.d/

COPY nginx.conf /etc/nginx/nginx.conf

COPY vhosts/ /etc/nginx/vhosts/

COPY index.html /usr/share/nginx/html/index.html
