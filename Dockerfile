FROM ubuntu:xenial

RUN apt-get update && apt-get -y install apache2 \
  php \
  libapache2-mod-php \
  php-mcrypt

RUN mkdir -p /var/www/html/php

COPY index.php /var/www/html/php/
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
