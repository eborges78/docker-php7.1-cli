FROM php:7.1-cli

RUN apt-get update -yqq
RUN apt-get install git unzip -yqq zlib1g-dev
RUN docker-php-ext-install pdo_mysql zip
RUN curl -fSL https://getcomposer.org/installer -o composer-setup.php \
&& php composer-setup.php --install-dir=bin --filename=composer \
&& rm composer-setup.php

RUN chmod a+x /bin/composer