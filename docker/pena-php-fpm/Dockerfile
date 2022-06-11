FROM php:8-fpm as dev
RUN docker-php-ext-install mysqli
# RUN apt-get update && \
#     apt-get install -y locales && \
#     apt-get clean && \
#     rm -rf /var/lib/apt/lists/*
# RUN locale-gen es_ES.UTF-8 && dpkg-reconfigure locales

FROM dev as pro
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
COPY ./public /public
