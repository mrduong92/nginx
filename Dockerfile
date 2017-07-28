FROM nginx:latest

MAINTAINER mrduong92, mrduong.92@gmail.com

ENV TERM xterm
COPY nginx.conf /etc/nginx/nginx.conf
COPY anagram.dev.conf /etc/nginx/conf.d/anagram.dev.conf
COPY upstream.conf /etc/nginx/conf.d/upstream.conf
RUN usermod -u 1000 www-data
RUN mkdir -p /var/www/anagram/public/ \
    && touch /var/www/anagram/public/index.php

CMD ["nginx"]

EXPOSE 80 443
