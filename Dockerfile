# docker-gitlab-ci-runner-php7

FROM bobey/docker-gitlab-ci-runner
MAINTAINER  Jordan Tomkinson "jordan@moodle.com"

RUN DEBIAN_FRONTEND=noninteractive apt-get remove -y --purge php*

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-software-properties
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
RUN DEBIAN_FRONTEND=noninteractive LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
    php7.2-cli \
    php7.2-common \
    php7.2-dev \
    php7.2-json \
    php7.2-opcache \
    php7.2-mysql \
    php7.2-phpdbg \
    php7.2-mbstring \
    php7.2-gd \
    php7.2-imap \
    php7.2-ldap \
    php7.2-pgsql \
    php7.2-sqlite \
    php7.2-pdo \
    php7.2-pspell \
    php7.2-recode \
    php7.2-tidy \
    php7.2-intl \
    php7.2-curl \
    php7.2-zip \
    php7.2-xml \
    php-mongodb \
    php-redis \
    php-memcache \
    php-xdebug

# Install composer
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer
