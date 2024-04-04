FROM debian:buster-slim

RUN apt-get update \
    && apt-get --allow-releaseinfo-change update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        imagemagick

RUN curl -sSL https://packages.sury.org/php/README.txt | bash -x \
    && apt-get install -y --no-install-recommends \
        php7.4-amqp \
        php7.4-apcu \
        php7.4-cli \
        php7.4-common \
        php7.4-ctype \
        php7.4-curl \
        php7.4-dom \
        php7.4-fileinfo \
        php7.4-fpm \
        php7.4-ftp \
        php7.4-iconv \
        php7.4-imagick \
        php7.4-intl \
        php7.4-json \
        php7.4-mbstring \
        php7.4-mysql \
        php7.4-opcache \
        php7.4-pcov \
        php7.4-phpdbg \
        php7.4-posix \
        php7.4-redis \
        php7.4-simplexml \
        php7.4-soap \
        php7.4-sockets \
        php7.4-sqlite3 \
        php7.4-tokenizer \
        php7.4-xml \
        php7.4-xmlreader \
        php7.4-xmlwriter \
        php7.4-zip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
