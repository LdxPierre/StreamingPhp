FROM php:8.1-alpine
RUN apk upgrade
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
WORKDIR /var/www/formation-back
COPY composer.json .
RUN composer install
COPY . .
