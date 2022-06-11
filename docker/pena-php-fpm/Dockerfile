FROM php:8-fpm as base

FROM base AS common
# Enable php fpm status page
RUN set -xe && echo "pm.status_path = /status" >> /usr/local/etc/php-fpm.d/zz-docker.conf

# Install mysqli
RUN docker-php-ext-install mysqli

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
        # locales \
        coreutils \
        libfcgi0ldbl \
        wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# RUN locale-gen es_ES.UTF-8 && dpkg-reconfigure locales

# Download and php-fpm-healthcheck
RUN wget -O /usr/local/bin/php-fpm-healthcheck \
    https://raw.githubusercontent.com/renatomefi/php-fpm-healthcheck/master/php-fpm-healthcheck && \
    chmod +x /usr/local/bin/php-fpm-healthcheck

HEALTHCHECK --interval=5s --timeout=1s \
    CMD php-fpm-healthcheck || exit 1

FROM common AS dev

FROM common as pro
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
COPY ./public /public
