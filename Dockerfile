FROM nginx:1.18.0-alpine

LABEL maintainer="Rafael Conceição - https://github.com/rafaelonline"

COPY conf.d/ /etc/nginx/conf.d/

COPY nginx.conf /etc/nginx/nginx.conf