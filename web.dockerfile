FROM php:8.3-apache

WORKDIR /

RUN curl -O https://wordpress.org/latest.zip

RUN apt update

RUN apt install unzip

RUN unzip latest.zip

RUN mv wordpress/* /var/www/html

RUN rm -rf latest.zip wordpress

RUN docker-php-ext-install mysqli